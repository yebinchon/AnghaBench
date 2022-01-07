
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {int dummy; } ;
struct list_head {int dummy; } ;
typedef int spinlock_t ;


 int KERN_WARNING ;
 int LOG_INIT ;
 int list_empty (struct list_head*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,char*,char*) ;
 int msleep (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int
lpfc_emptyq_wait(struct lpfc_hba *phba, struct list_head *q, spinlock_t *lock)
{
 int cnt = 0;

 spin_lock_irq(lock);
 while (!list_empty(q)) {
  spin_unlock_irq(lock);
  msleep(20);
  if (cnt++ > 250) {
   lpfc_printf_log(phba, KERN_WARNING, LOG_INIT,
     "0466 %s %s\n",
     "Outstanding IO when ",
     "bringing Adapter offline\n");
    return 0;
  }
  spin_lock_irq(lock);
 }
 spin_unlock_irq(lock);
 return 1;
}
