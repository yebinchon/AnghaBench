
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int dummy; } ;


 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_INIT ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;

__attribute__((used)) static void lpfc_log_intr_mode(struct lpfc_hba *phba, uint32_t intr_mode)
{
 switch (intr_mode) {
 case 0:
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "0470 Enable INTx interrupt mode.\n");
  break;
 case 1:
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "0481 Enabled MSI interrupt mode.\n");
  break;
 case 2:
  lpfc_printf_log(phba, KERN_INFO, LOG_INIT,
    "0480 Enabled MSI-X interrupt mode.\n");
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0482 Illegal interrupt mode.\n");
  break;
 }
 return;
}
