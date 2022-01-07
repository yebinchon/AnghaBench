
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int status; int timeout; struct device* parent; int min_hw_heartbeat_ms; int max_timeout; int min_timeout; int * ops; int * info; } ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct da9063 {int dummy; } ;


 int DA9063_RESET_PROTECTION_MS ;
 int DA9063_WDG_TIMEOUT ;
 int DA9063_WDT_MAX_TIMEOUT ;
 int DA9063_WDT_MIN_TIMEOUT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int WATCHDOG_NOWAYOUT_INIT_STATUS ;
 int WDOG_HW_RUNNING ;
 int da9063_watchdog_info ;
 int da9063_watchdog_ops ;
 scalar_t__ da9063_wdt_is_running (struct da9063*) ;
 int da9063_wdt_set_timeout (struct watchdog_device*,int ) ;
 int da9063_wdt_update_timeout (struct da9063*,int ) ;
 struct da9063* dev_get_drvdata (int ) ;
 struct watchdog_device* devm_kzalloc (struct device*,int,int ) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 int set_bit (int ,int *) ;
 int watchdog_init_timeout (struct watchdog_device*,int ,struct device*) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct da9063*) ;
 int watchdog_set_restart_priority (struct watchdog_device*,int) ;

__attribute__((used)) static int da9063_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct da9063 *da9063;
 struct watchdog_device *wdd;

 if (!dev->parent)
  return -EINVAL;

 da9063 = dev_get_drvdata(dev->parent);
 if (!da9063)
  return -EINVAL;

 wdd = devm_kzalloc(dev, sizeof(*wdd), GFP_KERNEL);
 if (!wdd)
  return -ENOMEM;

 wdd->info = &da9063_watchdog_info;
 wdd->ops = &da9063_watchdog_ops;
 wdd->min_timeout = DA9063_WDT_MIN_TIMEOUT;
 wdd->max_timeout = DA9063_WDT_MAX_TIMEOUT;
 wdd->min_hw_heartbeat_ms = DA9063_RESET_PROTECTION_MS;
 wdd->parent = dev;
 wdd->status = WATCHDOG_NOWAYOUT_INIT_STATUS;

 watchdog_set_restart_priority(wdd, 128);
 watchdog_set_drvdata(wdd, da9063);


 wdd->timeout = DA9063_WDG_TIMEOUT;
 watchdog_init_timeout(wdd, 0, dev);
 da9063_wdt_set_timeout(wdd, wdd->timeout);


 if (da9063_wdt_is_running(da9063)) {
  da9063_wdt_update_timeout(da9063, wdd->timeout);
  set_bit(WDOG_HW_RUNNING, &wdd->status);
 }

 return devm_watchdog_register_device(dev, wdd);
}
