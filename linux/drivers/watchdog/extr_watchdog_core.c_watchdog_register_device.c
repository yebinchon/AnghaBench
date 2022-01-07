
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {TYPE_1__* info; scalar_t__ parent; } ;
struct TYPE_2__ {scalar_t__ identity; } ;


 int __watchdog_register_device (struct watchdog_device*) ;
 char const* dev_name (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,char const*,int) ;
 int watchdog_deferred_registration_add (struct watchdog_device*) ;
 scalar_t__ wtd_deferred_reg_done ;
 int wtd_deferred_reg_mutex ;

int watchdog_register_device(struct watchdog_device *wdd)
{
 const char *dev_str;
 int ret = 0;

 mutex_lock(&wtd_deferred_reg_mutex);
 if (wtd_deferred_reg_done)
  ret = __watchdog_register_device(wdd);
 else
  watchdog_deferred_registration_add(wdd);
 mutex_unlock(&wtd_deferred_reg_mutex);

 if (ret) {
  dev_str = wdd->parent ? dev_name(wdd->parent) :
     (const char *)wdd->info->identity;
  pr_err("%s: failed to register watchdog device (err = %d)\n",
   dev_str, ret);
 }

 return ret;
}
