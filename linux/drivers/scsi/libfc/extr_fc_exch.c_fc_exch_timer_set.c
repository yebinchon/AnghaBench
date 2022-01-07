
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_exch {int ex_lock; } ;


 int fc_exch_timer_set_locked (struct fc_exch*,unsigned int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fc_exch_timer_set(struct fc_exch *ep, unsigned int timer_msec)
{
 spin_lock_bh(&ep->ex_lock);
 fc_exch_timer_set_locked(ep, timer_msec);
 spin_unlock_bh(&ep->ex_lock);
}
