
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct ulp_bde64 {int dummy; } ;
struct scsi_cmnd {int sc_data_direction; } ;
struct lpfc_vport {int cfg_first_burst_size; } ;
struct TYPE_11__ {int fcpi_parm; int fcpi_XRdy; } ;
struct TYPE_9__ {int bdeSize; } ;
struct TYPE_10__ {TYPE_2__ bdl; } ;
struct TYPE_12__ {TYPE_4__ fcpi; TYPE_3__ fcpi64; } ;
struct TYPE_14__ {int ulpBdeCount; int ulpLe; TYPE_5__ un; } ;
struct TYPE_8__ {TYPE_7__ iocb; } ;
struct lpfc_io_buf {int seg_cnt; int prot_seg_cnt; TYPE_1__ cur_iocbq; scalar_t__ dma_sgl; struct fcp_cmnd* fcp_cmnd; struct scsi_cmnd* pCmd; } ;
struct lpfc_hba {int cfg_sg_seg_cnt; int cfg_total_seg_cnt; TYPE_6__* pcidev; struct lpfc_vport* pport; } ;
struct fcp_cmnd {int fcpDl; } ;
struct TYPE_13__ {int dev; } ;
typedef TYPE_7__ IOCB_t ;


 int KERN_ERR ;
 int LOG_FCP ;



 int WARN_ON_ONCE (int) ;
 int be32_to_cpu (int) ;
 int dma_map_sg (int *,int ,scalar_t__,int) ;
 int dma_unmap_sg (int *,int ,scalar_t__,int) ;
 int lpfc_bg_scsi_adjust_dl (struct lpfc_hba*,struct lpfc_io_buf*) ;
 int lpfc_bg_setup_bpl (struct lpfc_hba*,struct scsi_cmnd*,struct ulp_bde64*,int) ;
 int lpfc_bg_setup_bpl_prot (struct lpfc_hba*,struct scsi_cmnd*,struct ulp_bde64*,int,int) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,...) ;
 int lpfc_prot_group_type (struct lpfc_hba*,struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 scalar_t__ scsi_prot_sg_count (struct scsi_cmnd*) ;
 int scsi_prot_sglist (struct scsi_cmnd*) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;
 int scsi_sglist (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
lpfc_bg_scsi_prep_dma_buf_s3(struct lpfc_hba *phba,
  struct lpfc_io_buf *lpfc_cmd)
{
 struct scsi_cmnd *scsi_cmnd = lpfc_cmd->pCmd;
 struct fcp_cmnd *fcp_cmnd = lpfc_cmd->fcp_cmnd;
 struct ulp_bde64 *bpl = (struct ulp_bde64 *)lpfc_cmd->dma_sgl;
 IOCB_t *iocb_cmd = &lpfc_cmd->cur_iocbq.iocb;
 uint32_t num_bde = 0;
 int datasegcnt, protsegcnt, datadir = scsi_cmnd->sc_data_direction;
 int prot_group_type = 0;
 int fcpdl;
 int ret = 1;
 struct lpfc_vport *vport = phba->pport;





 bpl += 2;
 if (scsi_sg_count(scsi_cmnd)) {






  datasegcnt = dma_map_sg(&phba->pcidev->dev,
     scsi_sglist(scsi_cmnd),
     scsi_sg_count(scsi_cmnd), datadir);
  if (unlikely(!datasegcnt))
   return 1;

  lpfc_cmd->seg_cnt = datasegcnt;


  if (lpfc_cmd->seg_cnt > phba->cfg_sg_seg_cnt) {
   WARN_ON_ONCE(lpfc_cmd->seg_cnt > phba->cfg_sg_seg_cnt);
   ret = 2;
   goto err;
  }

  prot_group_type = lpfc_prot_group_type(phba, scsi_cmnd);

  switch (prot_group_type) {
  case 128:


   if ((lpfc_cmd->seg_cnt + 2) > phba->cfg_total_seg_cnt) {
    ret = 2;
    goto err;
   }

   num_bde = lpfc_bg_setup_bpl(phba, scsi_cmnd, bpl,
     datasegcnt);

   if (num_bde < 2) {
    ret = 2;
    goto err;
   }
   break;

  case 130:





   protsegcnt = dma_map_sg(&phba->pcidev->dev,
     scsi_prot_sglist(scsi_cmnd),
     scsi_prot_sg_count(scsi_cmnd), datadir);
   if (unlikely(!protsegcnt)) {
    scsi_dma_unmap(scsi_cmnd);
    return 1;
   }

   lpfc_cmd->prot_seg_cnt = protsegcnt;





   if ((lpfc_cmd->prot_seg_cnt * 4) >
       (phba->cfg_total_seg_cnt - 2)) {
    ret = 2;
    goto err;
   }

   num_bde = lpfc_bg_setup_bpl_prot(phba, scsi_cmnd, bpl,
     datasegcnt, protsegcnt);

   if ((num_bde < 3) ||
       (num_bde > phba->cfg_total_seg_cnt)) {
    ret = 2;
    goto err;
   }
   break;

  case 129:
  default:
   scsi_dma_unmap(scsi_cmnd);
   lpfc_cmd->seg_cnt = 0;

   lpfc_printf_log(phba, KERN_ERR, LOG_FCP,
     "9022 Unexpected protection group %i\n",
     prot_group_type);
   return 2;
  }
 }







 iocb_cmd->un.fcpi64.bdl.bdeSize = (2 * sizeof(struct ulp_bde64));
 iocb_cmd->un.fcpi64.bdl.bdeSize += (num_bde * sizeof(struct ulp_bde64));
 iocb_cmd->ulpBdeCount = 1;
 iocb_cmd->ulpLe = 1;

 fcpdl = lpfc_bg_scsi_adjust_dl(phba, lpfc_cmd);
 fcp_cmnd->fcpDl = be32_to_cpu(fcpdl);





 iocb_cmd->un.fcpi.fcpi_parm = fcpdl;





 if (iocb_cmd->un.fcpi.fcpi_XRdy &&
     (fcpdl < vport->cfg_first_burst_size))
  iocb_cmd->un.fcpi.fcpi_XRdy = fcpdl;

 return 0;
err:
 if (lpfc_cmd->seg_cnt)
  scsi_dma_unmap(scsi_cmnd);
 if (lpfc_cmd->prot_seg_cnt)
  dma_unmap_sg(&phba->pcidev->dev, scsi_prot_sglist(scsi_cmnd),
        scsi_prot_sg_count(scsi_cmnd),
        scsi_cmnd->sc_data_direction);

 lpfc_printf_log(phba, KERN_ERR, LOG_FCP,
   "9023 Cannot setup S/G List for HBA"
   "IO segs %d/%d BPL %d SCSI %d: %d %d\n",
   lpfc_cmd->seg_cnt, lpfc_cmd->prot_seg_cnt,
   phba->cfg_total_seg_cnt, phba->cfg_sg_seg_cnt,
   prot_group_type, num_bde);

 lpfc_cmd->seg_cnt = 0;
 lpfc_cmd->prot_seg_cnt = 0;
 return ret;
}
