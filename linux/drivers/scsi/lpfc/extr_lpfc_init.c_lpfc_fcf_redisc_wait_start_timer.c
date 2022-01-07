
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fcf_flag; int redisc_wait; } ;
struct lpfc_hba {int hbalock; TYPE_1__ fcf; } ;


 int FCF_AVAILABLE ;
 int FCF_REDISC_PEND ;
 int FCF_SCAN_DONE ;
 int LPFC_FCF_REDISCOVER_WAIT_TMO ;
 unsigned long jiffies ;
 int mod_timer (int *,unsigned long) ;
 unsigned long msecs_to_jiffies (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
lpfc_fcf_redisc_wait_start_timer(struct lpfc_hba *phba)
{
 unsigned long fcf_redisc_wait_tmo =
  (jiffies + msecs_to_jiffies(LPFC_FCF_REDISCOVER_WAIT_TMO));

 mod_timer(&phba->fcf.redisc_wait, fcf_redisc_wait_tmo);
 spin_lock_irq(&phba->hbalock);

 phba->fcf.fcf_flag &= ~(FCF_AVAILABLE | FCF_SCAN_DONE);

 phba->fcf.fcf_flag |= FCF_REDISC_PEND;
 spin_unlock_irq(&phba->hbalock);
}
