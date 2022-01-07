
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int __watchdog_unregister_device (struct watchdog_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int watchdog_deferred_registration_del (struct watchdog_device*) ;
 scalar_t__ wtd_deferred_reg_done ;
 int wtd_deferred_reg_mutex ;

void watchdog_unregister_device(struct watchdog_device *wdd)
{
 mutex_lock(&wtd_deferred_reg_mutex);
 if (wtd_deferred_reg_done)
  __watchdog_unregister_device(wdd);
 else
  watchdog_deferred_registration_del(wdd);
 mutex_unlock(&wtd_deferred_reg_mutex);
}
