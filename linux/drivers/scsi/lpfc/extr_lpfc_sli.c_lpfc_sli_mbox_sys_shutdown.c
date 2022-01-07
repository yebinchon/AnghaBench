
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_sli {int sli_flag; scalar_t__ mbox_active; } ;
struct lpfc_hba {int hbalock; struct lpfc_sli sli; } ;


 int LPFC_MBOX_TMO ;
 int LPFC_MBX_NO_WAIT ;
 int LPFC_SLI_ACTIVE ;
 int LPFC_SLI_ASYNC_MBX_BLK ;
 int jiffies ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int lpfc_mbox_tmo_val (struct lpfc_hba*,scalar_t__) ;
 int lpfc_sli_mbox_sys_flush (struct lpfc_hba*) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ time_after (int ,unsigned long) ;

void
lpfc_sli_mbox_sys_shutdown(struct lpfc_hba *phba, int mbx_action)
{
 struct lpfc_sli *psli = &phba->sli;
 unsigned long timeout;

 if (mbx_action == LPFC_MBX_NO_WAIT) {

  msleep(100);
  lpfc_sli_mbox_sys_flush(phba);
  return;
 }
 timeout = msecs_to_jiffies(LPFC_MBOX_TMO * 1000) + jiffies;


 local_bh_disable();

 spin_lock_irq(&phba->hbalock);
 psli->sli_flag |= LPFC_SLI_ASYNC_MBX_BLK;

 if (psli->sli_flag & LPFC_SLI_ACTIVE) {



  if (phba->sli.mbox_active)
   timeout = msecs_to_jiffies(lpfc_mbox_tmo_val(phba,
      phba->sli.mbox_active) *
      1000) + jiffies;
  spin_unlock_irq(&phba->hbalock);


  local_bh_enable();

  while (phba->sli.mbox_active) {

   msleep(2);
   if (time_after(jiffies, timeout))



    break;
  }
 } else {
  spin_unlock_irq(&phba->hbalock);


  local_bh_enable();
 }

 lpfc_sli_mbox_sys_flush(phba);
}
