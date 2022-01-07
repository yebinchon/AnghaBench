
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_pm_state {int stay_awake; int lock; } ;
struct cw1200_common {int dummy; } ;


 int cw1200_pm_stay_awake_tmo ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int cw1200_pm_init(struct cw1200_pm_state *pm,
     struct cw1200_common *priv)
{
 spin_lock_init(&pm->lock);

 timer_setup(&pm->stay_awake, cw1200_pm_stay_awake_tmo, 0);

 return 0;
}
