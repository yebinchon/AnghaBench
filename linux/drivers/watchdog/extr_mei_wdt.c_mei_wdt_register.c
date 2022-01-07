
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int max_timeout; int min_timeout; int timeout; struct device* parent; int * ops; int * info; } ;
struct mei_wdt {int reg_lock; int state; TYPE_2__ wdd; TYPE_1__* cldev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;


 int EINVAL ;
 int MEI_WDT_DEFAULT_TIMEOUT ;
 int MEI_WDT_IDLE ;
 int MEI_WDT_MAX_TIMEOUT ;
 int MEI_WDT_MIN_TIMEOUT ;
 scalar_t__ __mei_wdt_is_registered (struct mei_wdt*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int watchdog_register_device (TYPE_2__*) ;
 int watchdog_set_drvdata (TYPE_2__*,struct mei_wdt*) ;
 int watchdog_stop_on_reboot (TYPE_2__*) ;
 int wd_info ;
 int wd_ops ;

__attribute__((used)) static int mei_wdt_register(struct mei_wdt *wdt)
{
 struct device *dev;
 int ret;

 if (!wdt || !wdt->cldev)
  return -EINVAL;

 dev = &wdt->cldev->dev;

 mutex_lock(&wdt->reg_lock);

 if (__mei_wdt_is_registered(wdt)) {
  ret = 0;
  goto out;
 }

 wdt->wdd.info = &wd_info;
 wdt->wdd.ops = &wd_ops;
 wdt->wdd.parent = dev;
 wdt->wdd.timeout = MEI_WDT_DEFAULT_TIMEOUT;
 wdt->wdd.min_timeout = MEI_WDT_MIN_TIMEOUT;
 wdt->wdd.max_timeout = MEI_WDT_MAX_TIMEOUT;

 watchdog_set_drvdata(&wdt->wdd, wdt);
 watchdog_stop_on_reboot(&wdt->wdd);

 ret = watchdog_register_device(&wdt->wdd);
 if (ret)
  watchdog_set_drvdata(&wdt->wdd, ((void*)0));

 wdt->state = MEI_WDT_IDLE;

out:
 mutex_unlock(&wdt->reg_lock);
 return ret;
}
