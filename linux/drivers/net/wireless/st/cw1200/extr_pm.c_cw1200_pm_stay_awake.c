
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long expires; } ;
struct cw1200_pm_state {int lock; TYPE_1__ stay_awake; } ;


 long jiffies ;
 int mod_timer (TYPE_1__*,long) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int timer_pending (TYPE_1__*) ;

void cw1200_pm_stay_awake(struct cw1200_pm_state *pm,
     unsigned long tmo)
{
 long cur_tmo;
 spin_lock_bh(&pm->lock);
 cur_tmo = pm->stay_awake.expires - jiffies;
 if (!timer_pending(&pm->stay_awake) || cur_tmo < (long)tmo)
  mod_timer(&pm->stay_awake, jiffies + tmo);
 spin_unlock_bh(&pm->lock);
}
