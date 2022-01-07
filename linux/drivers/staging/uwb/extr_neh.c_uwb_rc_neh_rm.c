
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc_neh {int timer; } ;
struct uwb_rc {int neh_lock; } ;


 int __uwb_rc_neh_rm (struct uwb_rc*,struct uwb_rc_neh*) ;
 int del_timer_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int uwb_rc_neh_put (struct uwb_rc_neh*) ;

void uwb_rc_neh_rm(struct uwb_rc *rc, struct uwb_rc_neh *neh)
{
 unsigned long flags;

 spin_lock_irqsave(&rc->neh_lock, flags);
 __uwb_rc_neh_rm(rc, neh);
 spin_unlock_irqrestore(&rc->neh_lock, flags);

 del_timer_sync(&neh->timer);
 uwb_rc_neh_put(neh);
}
