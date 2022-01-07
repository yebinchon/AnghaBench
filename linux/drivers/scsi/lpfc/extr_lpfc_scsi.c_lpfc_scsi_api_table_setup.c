
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lpfc_hba {int lpfc_scsi_cmd_iocb_cmpl; int lpfc_rampdown_queue_depth; int lpfc_get_scsi_buf; int lpfc_release_scsi_buf; int lpfc_bg_scsi_prep_dma_buf; int lpfc_scsi_prep_dma_buf; int lpfc_scsi_prep_cmnd; int lpfc_scsi_unprep_dma_buf; } ;


 int ENODEV ;
 int KERN_ERR ;
 int LOG_INIT ;


 int lpfc_bg_scsi_prep_dma_buf_s3 ;
 int lpfc_bg_scsi_prep_dma_buf_s4 ;
 int lpfc_get_scsi_buf_s3 ;
 int lpfc_get_scsi_buf_s4 ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_rampdown_queue_depth ;
 int lpfc_release_scsi_buf_s3 ;
 int lpfc_release_scsi_buf_s4 ;
 int lpfc_scsi_cmd_iocb_cmpl ;
 int lpfc_scsi_prep_cmnd ;
 int lpfc_scsi_prep_dma_buf_s3 ;
 int lpfc_scsi_prep_dma_buf_s4 ;
 int lpfc_scsi_unprep_dma_buf ;

int
lpfc_scsi_api_table_setup(struct lpfc_hba *phba, uint8_t dev_grp)
{

 phba->lpfc_scsi_unprep_dma_buf = lpfc_scsi_unprep_dma_buf;
 phba->lpfc_scsi_prep_cmnd = lpfc_scsi_prep_cmnd;

 switch (dev_grp) {
 case 129:
  phba->lpfc_scsi_prep_dma_buf = lpfc_scsi_prep_dma_buf_s3;
  phba->lpfc_bg_scsi_prep_dma_buf = lpfc_bg_scsi_prep_dma_buf_s3;
  phba->lpfc_release_scsi_buf = lpfc_release_scsi_buf_s3;
  phba->lpfc_get_scsi_buf = lpfc_get_scsi_buf_s3;
  break;
 case 128:
  phba->lpfc_scsi_prep_dma_buf = lpfc_scsi_prep_dma_buf_s4;
  phba->lpfc_bg_scsi_prep_dma_buf = lpfc_bg_scsi_prep_dma_buf_s4;
  phba->lpfc_release_scsi_buf = lpfc_release_scsi_buf_s4;
  phba->lpfc_get_scsi_buf = lpfc_get_scsi_buf_s4;
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1418 Invalid HBA PCI-device group: 0x%x\n",
    dev_grp);
  return -ENODEV;
  break;
 }
 phba->lpfc_rampdown_queue_depth = lpfc_rampdown_queue_depth;
 phba->lpfc_scsi_cmd_iocb_cmpl = lpfc_scsi_cmd_iocb_cmpl;
 return 0;
}
