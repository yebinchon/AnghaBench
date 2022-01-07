
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc_neh {int timer; scalar_t__ context; } ;
struct uwb_rc {int neh_lock; } ;


 int UWB_RC_CMD_TIMEOUT_MS ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void uwb_rc_neh_arm(struct uwb_rc *rc, struct uwb_rc_neh *neh)
{
 unsigned long flags;

 spin_lock_irqsave(&rc->neh_lock, flags);
 if (neh->context)
  mod_timer(&neh->timer,
     jiffies + msecs_to_jiffies(UWB_RC_CMD_TIMEOUT_MS));
 spin_unlock_irqrestore(&rc->neh_lock, flags);
}
