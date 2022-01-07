
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct lpfc_sli {int sli_flag; } ;
struct lpfc_hba {int work_hs; scalar_t__ MBslimaddr; void** work_status; int hbalock; int hba_flag; TYPE_1__* pport; int HSregaddr; int pcidev; struct lpfc_sli sli; } ;
struct TYPE_2__ {int load_flag; } ;


 int DEFER_ERATT ;
 int FC_UNLOADING ;
 int HS_FFER1 ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_MBX_WAIT ;
 int LPFC_SLI_ACTIVE ;
 int UNPLUG_ERR ;
 int lpfc_offline (struct lpfc_hba*) ;
 int lpfc_offline_prep (struct lpfc_hba*,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,void*,void*) ;
 scalar_t__ lpfc_readl (int ,int*) ;
 int lpfc_sli_abort_fcp_rings (struct lpfc_hba*) ;
 int msleep (int) ;
 scalar_t__ pci_channel_offline (int ) ;
 void* readl (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_handle_deferred_eratt(struct lpfc_hba *phba)
{
 uint32_t old_host_status = phba->work_hs;
 struct lpfc_sli *psli = &phba->sli;




 if (pci_channel_offline(phba->pcidev)) {
  spin_lock_irq(&phba->hbalock);
  phba->hba_flag &= ~DEFER_ERATT;
  spin_unlock_irq(&phba->hbalock);
  return;
 }

 lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
  "0479 Deferred Adapter Hardware Error "
  "Data: x%x x%x x%x\n",
  phba->work_hs,
  phba->work_status[0], phba->work_status[1]);

 spin_lock_irq(&phba->hbalock);
 psli->sli_flag &= ~LPFC_SLI_ACTIVE;
 spin_unlock_irq(&phba->hbalock);







 lpfc_sli_abort_fcp_rings(phba);





 lpfc_offline_prep(phba, LPFC_MBX_WAIT);
 lpfc_offline(phba);


 while (phba->work_hs & HS_FFER1) {
  msleep(100);
  if (lpfc_readl(phba->HSregaddr, &phba->work_hs)) {
   phba->work_hs = UNPLUG_ERR ;
   break;
  }

  if (phba->pport->load_flag & FC_UNLOADING) {
   phba->work_hs = 0;
   break;
  }
 }






 if ((!phba->work_hs) && (!(phba->pport->load_flag & FC_UNLOADING)))
  phba->work_hs = old_host_status & ~HS_FFER1;

 spin_lock_irq(&phba->hbalock);
 phba->hba_flag &= ~DEFER_ERATT;
 spin_unlock_irq(&phba->hbalock);
 phba->work_status[0] = readl(phba->MBslimaddr + 0xa8);
 phba->work_status[1] = readl(phba->MBslimaddr + 0xac);
}
