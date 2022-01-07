
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_hba {int link_flag; int hba_flag; int sli_rev; int hbalock; int pcidev; } ;


 int DEFER_ERATT ;
 int HBA_ERATT_HANDLED ;
 int KERN_ERR ;
 int LOG_INIT ;



 int LS_IGNORE_ERATT ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int) ;
 int lpfc_sli4_eratt_read (struct lpfc_hba*) ;
 int lpfc_sli_eratt_read (struct lpfc_hba*) ;
 int pci_channel_offline (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;

int
lpfc_sli_check_eratt(struct lpfc_hba *phba)
{
 uint32_t ha_copy;




 if (phba->link_flag & LS_IGNORE_ERATT)
  return 0;


 spin_lock_irq(&phba->hbalock);
 if (phba->hba_flag & HBA_ERATT_HANDLED) {

  spin_unlock_irq(&phba->hbalock);
  return 0;
 }





 if (unlikely(phba->hba_flag & DEFER_ERATT)) {
  spin_unlock_irq(&phba->hbalock);
  return 0;
 }


 if (unlikely(pci_channel_offline(phba->pcidev))) {
  spin_unlock_irq(&phba->hbalock);
  return 0;
 }

 switch (phba->sli_rev) {
 case 130:
 case 129:

  ha_copy = lpfc_sli_eratt_read(phba);
  break;
 case 128:

  ha_copy = lpfc_sli4_eratt_read(phba);
  break;
 default:
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0299 Invalid SLI revision (%d)\n",
    phba->sli_rev);
  ha_copy = 0;
  break;
 }
 spin_unlock_irq(&phba->hbalock);

 return ha_copy;
}
