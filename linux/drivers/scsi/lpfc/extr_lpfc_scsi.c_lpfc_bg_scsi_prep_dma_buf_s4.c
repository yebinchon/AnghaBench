
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct sli4_sge {int word2; } ;
struct scsi_cmnd {int sc_data_direction; TYPE_3__* device; } ;
struct lpfc_vport {int cfg_first_burst_size; } ;
struct TYPE_7__ {int fcpi_parm; int fcpi_XRdy; } ;
struct TYPE_8__ {TYPE_1__ fcpi; } ;
struct TYPE_12__ {TYPE_2__ un; } ;
struct TYPE_10__ {int iocb_flag; TYPE_6__ iocb; } ;
struct lpfc_io_buf {int seg_cnt; int prot_seg_cnt; TYPE_4__ cur_iocbq; scalar_t__ dma_sgl; struct fcp_cmnd* fcp_cmnd; struct scsi_cmnd* pCmd; } ;
struct lpfc_hba {int cfg_sg_seg_cnt; int cfg_total_seg_cnt; TYPE_5__* pcidev; scalar_t__ cfg_fof; int cfg_xpsgl; struct lpfc_vport* pport; } ;
struct lpfc_device_data {scalar_t__ oas_enabled; } ;
struct fcp_cmnd {int fcpDl; } ;
struct TYPE_11__ {int dev; } ;
struct TYPE_9__ {scalar_t__ hostdata; } ;
typedef TYPE_6__ IOCB_t ;


 int KERN_ERR ;
 int LOG_FCP ;
 int LPFC_IO_DIF_INSERT ;
 int LPFC_IO_DIF_PASS ;
 int LPFC_IO_DIF_STRIP ;
 int LPFC_IO_FOF ;
 int LPFC_IO_OAS ;
 int WARN_ON_ONCE (int) ;
 int be32_to_cpu (int) ;
 int bf_set (int ,struct sli4_sge*,int ) ;
 int cpu_to_le32 (int ) ;
 int dma_map_sg (int *,int ,scalar_t__,int) ;
 int dma_unmap_sg (int *,int ,scalar_t__,int) ;
 int le32_to_cpu (int ) ;
 int lpfc_bg_scsi_adjust_dl (struct lpfc_hba*,struct lpfc_io_buf*) ;
 int lpfc_bg_setup_sgl (struct lpfc_hba*,struct scsi_cmnd*,struct sli4_sge*,int,struct lpfc_io_buf*) ;
 int lpfc_bg_setup_sgl_prot (struct lpfc_hba*,struct scsi_cmnd*,struct sli4_sge*,int,int,struct lpfc_io_buf*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,...) ;
 int lpfc_prot_group_type (struct lpfc_hba*,struct scsi_cmnd*) ;
 int lpfc_sli4_sge_last ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int scsi_get_prot_op (struct scsi_cmnd*) ;
 scalar_t__ scsi_prot_sg_count (struct scsi_cmnd*) ;
 int scsi_prot_sglist (struct scsi_cmnd*) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
lpfc_bg_scsi_prep_dma_buf_s4(struct lpfc_hba *phba,
  struct lpfc_io_buf *lpfc_cmd)
{
 struct scsi_cmnd *scsi_cmnd = lpfc_cmd->pCmd;
 struct fcp_cmnd *fcp_cmnd = lpfc_cmd->fcp_cmnd;
 struct sli4_sge *sgl = (struct sli4_sge *)(lpfc_cmd->dma_sgl);
 IOCB_t *iocb_cmd = &lpfc_cmd->cur_iocbq.iocb;
 uint32_t num_sge = 0;
 int datasegcnt, protsegcnt, datadir = scsi_cmnd->sc_data_direction;
 int prot_group_type = 0;
 int fcpdl;
 int ret = 1;
 struct lpfc_vport *vport = phba->pport;





 if (scsi_sg_count(scsi_cmnd)) {






  datasegcnt = dma_map_sg(&phba->pcidev->dev,
     scsi_sglist(scsi_cmnd),
     scsi_sg_count(scsi_cmnd), datadir);
  if (unlikely(!datasegcnt))
   return 1;

  sgl += 1;

  sgl->word2 = le32_to_cpu(sgl->word2);
  bf_set(lpfc_sli4_sge_last, sgl, 0);
  sgl->word2 = cpu_to_le32(sgl->word2);

  sgl += 1;
  lpfc_cmd->seg_cnt = datasegcnt;


  if (lpfc_cmd->seg_cnt > phba->cfg_sg_seg_cnt &&
      !phba->cfg_xpsgl) {
   WARN_ON_ONCE(lpfc_cmd->seg_cnt > phba->cfg_sg_seg_cnt);
   ret = 2;
   goto err;
  }

  prot_group_type = lpfc_prot_group_type(phba, scsi_cmnd);

  switch (prot_group_type) {
  case 134:

   if (((lpfc_cmd->seg_cnt + 1) >
     phba->cfg_total_seg_cnt) &&
       !phba->cfg_xpsgl) {
    ret = 2;
    goto err;
   }

   num_sge = lpfc_bg_setup_sgl(phba, scsi_cmnd, sgl,
     datasegcnt, lpfc_cmd);


   if (num_sge < 2) {
    ret = 2;
    goto err;
   }
   break;

  case 136:





   protsegcnt = dma_map_sg(&phba->pcidev->dev,
     scsi_prot_sglist(scsi_cmnd),
     scsi_prot_sg_count(scsi_cmnd), datadir);
   if (unlikely(!protsegcnt)) {
    scsi_dma_unmap(scsi_cmnd);
    return 1;
   }

   lpfc_cmd->prot_seg_cnt = protsegcnt;




   if (((lpfc_cmd->prot_seg_cnt * 3) >
     (phba->cfg_total_seg_cnt - 2)) &&
       !phba->cfg_xpsgl) {
    ret = 2;
    goto err;
   }

   num_sge = lpfc_bg_setup_sgl_prot(phba, scsi_cmnd, sgl,
     datasegcnt, protsegcnt, lpfc_cmd);


   if (num_sge < 3 ||
       (num_sge > phba->cfg_total_seg_cnt &&
        !phba->cfg_xpsgl)) {
    ret = 2;
    goto err;
   }
   break;

  case 135:
  default:
   scsi_dma_unmap(scsi_cmnd);
   lpfc_cmd->seg_cnt = 0;

   lpfc_printf_log(phba, KERN_ERR, LOG_FCP,
     "9083 Unexpected protection group %i\n",
     prot_group_type);
   return 2;
  }
 }

 switch (scsi_get_prot_op(scsi_cmnd)) {
 case 128:
 case 131:
  lpfc_cmd->cur_iocbq.iocb_flag |= LPFC_IO_DIF_STRIP;
  break;
 case 130:
 case 133:
  lpfc_cmd->cur_iocbq.iocb_flag |= LPFC_IO_DIF_INSERT;
  break;
 case 129:
 case 132:
  lpfc_cmd->cur_iocbq.iocb_flag |= LPFC_IO_DIF_PASS;
  break;
 }

 fcpdl = lpfc_bg_scsi_adjust_dl(phba, lpfc_cmd);
 fcp_cmnd->fcpDl = be32_to_cpu(fcpdl);





 iocb_cmd->un.fcpi.fcpi_parm = fcpdl;





 if (iocb_cmd->un.fcpi.fcpi_XRdy &&
     (fcpdl < vport->cfg_first_burst_size))
  iocb_cmd->un.fcpi.fcpi_XRdy = fcpdl;





 if ((phba->cfg_fof) && ((struct lpfc_device_data *)
  scsi_cmnd->device->hostdata)->oas_enabled)
  lpfc_cmd->cur_iocbq.iocb_flag |= (LPFC_IO_OAS | LPFC_IO_FOF);

 return 0;
err:
 if (lpfc_cmd->seg_cnt)
  scsi_dma_unmap(scsi_cmnd);
 if (lpfc_cmd->prot_seg_cnt)
  dma_unmap_sg(&phba->pcidev->dev, scsi_prot_sglist(scsi_cmnd),
        scsi_prot_sg_count(scsi_cmnd),
        scsi_cmnd->sc_data_direction);

 lpfc_printf_log(phba, KERN_ERR, LOG_FCP,
   "9084 Cannot setup S/G List for HBA"
   "IO segs %d/%d SGL %d SCSI %d: %d %d\n",
   lpfc_cmd->seg_cnt, lpfc_cmd->prot_seg_cnt,
   phba->cfg_total_seg_cnt, phba->cfg_sg_seg_cnt,
   prot_group_type, num_sge);

 lpfc_cmd->seg_cnt = 0;
 lpfc_cmd->prot_seg_cnt = 0;
 return ret;
}
