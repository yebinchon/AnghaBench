
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli {int sli_flag; } ;
struct lpfc_hba {int hbalock; struct lpfc_sli sli; } ;


 int LPFC_SLI_ASYNC_MBX_BLK ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
lpfc_sli4_async_mbox_unblock(struct lpfc_hba *phba)
{
 struct lpfc_sli *psli = &phba->sli;

 spin_lock_irq(&phba->hbalock);
 if (!(psli->sli_flag & LPFC_SLI_ASYNC_MBX_BLK)) {

  spin_unlock_irq(&phba->hbalock);
  return;
 }






 psli->sli_flag &= ~LPFC_SLI_ASYNC_MBX_BLK;
 spin_unlock_irq(&phba->hbalock);


 lpfc_worker_wake_up(phba);
}
