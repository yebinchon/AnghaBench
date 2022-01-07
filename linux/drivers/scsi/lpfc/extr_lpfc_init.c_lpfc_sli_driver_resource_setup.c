
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ulp_bde64 {int dummy; } ;
struct sli4_sge {int dummy; } ;
struct lpfc_sli_ring {int dummy; } ;
struct TYPE_6__ {scalar_t__ sli3_ring; } ;
struct lpfc_hba {int work_ha_mask; int cfg_sg_seg_cnt; scalar_t__ sli_rev; int cfg_sg_dma_buf_size; int cfg_total_seg_cnt; int * lpfc_sg_dma_buf_pool; int cfg_sriov_nr_virtfn; void* lpfc_cmd_rsp_buf_pool; TYPE_2__* pcidev; scalar_t__ max_vports; int max_vpi; scalar_t__ cfg_enable_bg; TYPE_1__ sli; int menlo_flag; int fcp_poll_timer; } ;
struct fcp_rsp {int dummy; } ;
struct fcp_cmnd {int dummy; } ;
struct TYPE_10__ {int sg_tablesize; } ;
struct TYPE_9__ {int sg_tablesize; } ;
struct TYPE_8__ {int sg_tablesize; } ;
struct TYPE_7__ {scalar_t__ device; int dev; } ;


 int BPL_ALIGN_SZ ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HA_ERATT ;
 int HA_LATT ;
 int HA_MBATT ;
 int HA_RXMASK ;
 int HBA_MENLO_SUPPORT ;
 int KERN_INFO ;
 int KERN_WARNING ;
 int LOG_FCP ;
 int LOG_INIT ;
 int LPFC_DEFAULT_MENLO_SG_SEG_CNT ;
 int LPFC_ELS_RING ;
 int LPFC_MAX_SG_SEG_CNT ;
 int LPFC_MAX_SG_SEG_CNT_DIF ;
 int LPFC_MAX_VPI ;
 int LPFC_SLI3_MAX_RING ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ PCI_DEVICE_ID_HORNET ;
 void* dma_pool_create (char*,int *,int,int ,int ) ;
 int dma_pool_destroy (int *) ;
 scalar_t__ kcalloc (int ,int,int ) ;
 int lpfc_get_cfgparam (struct lpfc_hba*) ;
 scalar_t__ lpfc_mem_alloc (struct lpfc_hba*,int ) ;
 int lpfc_mem_free (struct lpfc_hba*) ;
 int lpfc_poll_timeout ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int,char*,int,...) ;
 int lpfc_setup_driver_resource_phase1 (struct lpfc_hba*) ;
 int lpfc_sli_probe_sriov_nr_virtfn (struct lpfc_hba*,int ) ;
 int lpfc_sli_queue_init (struct lpfc_hba*) ;
 int lpfc_sli_setup (struct lpfc_hba*) ;
 TYPE_5__ lpfc_template ;
 TYPE_4__ lpfc_template_no_hr ;
 TYPE_3__ lpfc_vport_template ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int
lpfc_sli_driver_resource_setup(struct lpfc_hba *phba)
{
 int rc, entry_sz;






 timer_setup(&phba->fcp_poll_timer, lpfc_poll_timeout, 0);


 phba->work_ha_mask = (HA_ERATT | HA_MBATT | HA_LATT);
 phba->work_ha_mask |= (HA_RXMASK << (LPFC_ELS_RING * 4));


 lpfc_get_cfgparam(phba);


 rc = lpfc_setup_driver_resource_phase1(phba);
 if (rc)
  return -ENODEV;

 if (phba->pcidev->device == PCI_DEVICE_ID_HORNET) {
  phba->menlo_flag |= HBA_MENLO_SUPPORT;

  if (phba->cfg_sg_seg_cnt < LPFC_DEFAULT_MENLO_SG_SEG_CNT)
   phba->cfg_sg_seg_cnt = LPFC_DEFAULT_MENLO_SG_SEG_CNT;
 }

 if (!phba->sli.sli3_ring)
  phba->sli.sli3_ring = kcalloc(LPFC_SLI3_MAX_RING,
           sizeof(struct lpfc_sli_ring),
           GFP_KERNEL);
 if (!phba->sli.sli3_ring)
  return -ENOMEM;







 lpfc_vport_template.sg_tablesize = phba->cfg_sg_seg_cnt;
 lpfc_template_no_hr.sg_tablesize = phba->cfg_sg_seg_cnt;
 lpfc_template.sg_tablesize = phba->cfg_sg_seg_cnt;

 if (phba->sli_rev == LPFC_SLI_REV4)
  entry_sz = sizeof(struct sli4_sge);
 else
  entry_sz = sizeof(struct ulp_bde64);


 if (phba->cfg_enable_bg) {
  phba->cfg_sg_dma_buf_size = sizeof(struct fcp_cmnd) +
   sizeof(struct fcp_rsp) +
   (LPFC_MAX_SG_SEG_CNT * entry_sz);

  if (phba->cfg_sg_seg_cnt > LPFC_MAX_SG_SEG_CNT_DIF)
   phba->cfg_sg_seg_cnt = LPFC_MAX_SG_SEG_CNT_DIF;


  phba->cfg_total_seg_cnt = LPFC_MAX_SG_SEG_CNT;
 } else {





  phba->cfg_sg_dma_buf_size = sizeof(struct fcp_cmnd) +
   sizeof(struct fcp_rsp) +
   ((phba->cfg_sg_seg_cnt + 2) * entry_sz);


  phba->cfg_total_seg_cnt = phba->cfg_sg_seg_cnt + 2;
 }

 lpfc_printf_log(phba, KERN_INFO, LOG_INIT | LOG_FCP,
   "9088 sg_tablesize:%d dmabuf_size:%d total_bde:%d\n",
   phba->cfg_sg_seg_cnt, phba->cfg_sg_dma_buf_size,
   phba->cfg_total_seg_cnt);

 phba->max_vpi = LPFC_MAX_VPI;

 phba->max_vports = 0;




 lpfc_sli_setup(phba);
 lpfc_sli_queue_init(phba);


 if (lpfc_mem_alloc(phba, BPL_ALIGN_SZ))
  return -ENOMEM;

 phba->lpfc_sg_dma_buf_pool =
  dma_pool_create("lpfc_sg_dma_buf_pool",
    &phba->pcidev->dev, phba->cfg_sg_dma_buf_size,
    BPL_ALIGN_SZ, 0);

 if (!phba->lpfc_sg_dma_buf_pool)
  goto fail_free_mem;

 phba->lpfc_cmd_rsp_buf_pool =
   dma_pool_create("lpfc_cmd_rsp_buf_pool",
     &phba->pcidev->dev,
     sizeof(struct fcp_cmnd) +
     sizeof(struct fcp_rsp),
     BPL_ALIGN_SZ, 0);

 if (!phba->lpfc_cmd_rsp_buf_pool)
  goto fail_free_dma_buf_pool;





 if (phba->cfg_sriov_nr_virtfn > 0) {
  rc = lpfc_sli_probe_sriov_nr_virtfn(phba,
       phba->cfg_sriov_nr_virtfn);
  if (rc) {
   lpfc_printf_log(phba, KERN_WARNING, LOG_INIT,
     "2808 Requested number of SR-IOV "
     "virtual functions (%d) is not "
     "supported\n",
     phba->cfg_sriov_nr_virtfn);
   phba->cfg_sriov_nr_virtfn = 0;
  }
 }

 return 0;

fail_free_dma_buf_pool:
 dma_pool_destroy(phba->lpfc_sg_dma_buf_pool);
 phba->lpfc_sg_dma_buf_pool = ((void*)0);
fail_free_mem:
 lpfc_mem_free(phba);
 return -ENOMEM;
}
