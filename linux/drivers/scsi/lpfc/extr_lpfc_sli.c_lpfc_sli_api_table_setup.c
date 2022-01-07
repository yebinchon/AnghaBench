
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lpfc_hba {int lpfc_get_iocb_from_iocbq; int __lpfc_sli_release_iocbq; int __lpfc_sli_issue_iocb; } ;


 int ENODEV ;
 int KERN_ERR ;
 int LOG_INIT ;


 int __lpfc_sli_issue_iocb_s3 ;
 int __lpfc_sli_issue_iocb_s4 ;
 int __lpfc_sli_release_iocbq_s3 ;
 int __lpfc_sli_release_iocbq_s4 ;
 int lpfc_get_iocb_from_iocbq ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;

int
lpfc_sli_api_table_setup(struct lpfc_hba *phba, uint8_t dev_grp)
{

 switch (dev_grp) {
 case 129:
  phba->__lpfc_sli_issue_iocb = __lpfc_sli_issue_iocb_s3;
  phba->__lpfc_sli_release_iocbq = __lpfc_sli_release_iocbq_s3;
  break;
 case 128:
  phba->__lpfc_sli_issue_iocb = __lpfc_sli_issue_iocb_s4;
  phba->__lpfc_sli_release_iocbq = __lpfc_sli_release_iocbq_s4;
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1419 Invalid HBA PCI-device group: 0x%x\n",
    dev_grp);
  return -ENODEV;
  break;
 }
 phba->lpfc_get_iocb_from_iocbq = lpfc_get_iocb_from_iocbq;
 return 0;
}
