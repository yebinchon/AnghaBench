
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lpfc_hba {int lpfc_sli_brdready; int lpfc_sli_brdrestart; int lpfc_sli_hbq_to_firmware; int lpfc_sli_handle_slow_ring_event; int lpfc_sli_issue_mbox; } ;


 int ENODEV ;
 int KERN_ERR ;
 int LOG_INIT ;


 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_sli_brdready_s3 ;
 int lpfc_sli_brdready_s4 ;
 int lpfc_sli_brdrestart_s3 ;
 int lpfc_sli_brdrestart_s4 ;
 int lpfc_sli_handle_slow_ring_event_s3 ;
 int lpfc_sli_handle_slow_ring_event_s4 ;
 int lpfc_sli_hbq_to_firmware_s3 ;
 int lpfc_sli_hbq_to_firmware_s4 ;
 int lpfc_sli_issue_mbox_s3 ;
 int lpfc_sli_issue_mbox_s4 ;

int
lpfc_mbox_api_table_setup(struct lpfc_hba *phba, uint8_t dev_grp)
{

 switch (dev_grp) {
 case 129:
  phba->lpfc_sli_issue_mbox = lpfc_sli_issue_mbox_s3;
  phba->lpfc_sli_handle_slow_ring_event =
    lpfc_sli_handle_slow_ring_event_s3;
  phba->lpfc_sli_hbq_to_firmware = lpfc_sli_hbq_to_firmware_s3;
  phba->lpfc_sli_brdrestart = lpfc_sli_brdrestart_s3;
  phba->lpfc_sli_brdready = lpfc_sli_brdready_s3;
  break;
 case 128:
  phba->lpfc_sli_issue_mbox = lpfc_sli_issue_mbox_s4;
  phba->lpfc_sli_handle_slow_ring_event =
    lpfc_sli_handle_slow_ring_event_s4;
  phba->lpfc_sli_hbq_to_firmware = lpfc_sli_hbq_to_firmware_s4;
  phba->lpfc_sli_brdrestart = lpfc_sli_brdrestart_s4;
  phba->lpfc_sli_brdready = lpfc_sli_brdready_s4;
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1420 Invalid HBA PCI-device group: 0x%x\n",
    dev_grp);
  return -ENODEV;
  break;
 }
 return 0;
}
