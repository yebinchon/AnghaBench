
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lpfc_hba {int lpfc_stop_port; int lpfc_handle_eratt; int lpfc_hba_down_post; int lpfc_selective_reset; int lpfc_hba_down_link; int lpfc_hba_init_link; } ;


 int ENODEV ;
 int KERN_ERR ;
 int LOG_INIT ;


 int lpfc_handle_eratt_s3 ;
 int lpfc_handle_eratt_s4 ;
 int lpfc_hba_down_link ;
 int lpfc_hba_down_post_s3 ;
 int lpfc_hba_down_post_s4 ;
 int lpfc_hba_init_link ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_selective_reset ;
 int lpfc_stop_port_s3 ;
 int lpfc_stop_port_s4 ;

int
lpfc_init_api_table_setup(struct lpfc_hba *phba, uint8_t dev_grp)
{
 phba->lpfc_hba_init_link = lpfc_hba_init_link;
 phba->lpfc_hba_down_link = lpfc_hba_down_link;
 phba->lpfc_selective_reset = lpfc_selective_reset;
 switch (dev_grp) {
 case 129:
  phba->lpfc_hba_down_post = lpfc_hba_down_post_s3;
  phba->lpfc_handle_eratt = lpfc_handle_eratt_s3;
  phba->lpfc_stop_port = lpfc_stop_port_s3;
  break;
 case 128:
  phba->lpfc_hba_down_post = lpfc_hba_down_post_s4;
  phba->lpfc_handle_eratt = lpfc_handle_eratt_s4;
  phba->lpfc_stop_port = lpfc_stop_port_s4;
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "1431 Invalid HBA PCI-device group: 0x%x\n",
    dev_grp);
  return -ENODEV;
  break;
 }
 return 0;
}
