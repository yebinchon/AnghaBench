
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_8__ {TYPE_6__* ops; int * parent; int timeout; int * info; } ;
struct bcm47xx_wdt {int max_timer_ms; int soft_timer; TYPE_1__ wdd; } ;
struct TYPE_9__ {int (* set_timeout ) (TYPE_1__*,int ) ;} ;


 int ENXIO ;
 int WDT_DEFAULT_TIME ;
 int WDT_SOFTTIMER_THRESHOLD ;
 TYPE_6__ bcm47xx_wdt_hard_ops ;
 int bcm47xx_wdt_info ;
 TYPE_6__ bcm47xx_wdt_soft_ops ;
 int bcm47xx_wdt_soft_timer_tick ;
 int del_timer_sync (int *) ;
 struct bcm47xx_wdt* dev_get_platdata (int *) ;
 int dev_info (int *,char*,int ,char*,char*) ;
 scalar_t__ nowayout ;
 int stub1 (TYPE_1__*,int ) ;
 int timeout ;
 int timer_setup (int *,int ,int ) ;
 int watchdog_register_device (TYPE_1__*) ;
 int watchdog_set_nowayout (TYPE_1__*,scalar_t__) ;
 int watchdog_set_restart_priority (TYPE_1__*,int) ;
 int watchdog_stop_on_reboot (TYPE_1__*) ;

__attribute__((used)) static int bcm47xx_wdt_probe(struct platform_device *pdev)
{
 int ret;
 bool soft;
 struct bcm47xx_wdt *wdt = dev_get_platdata(&pdev->dev);

 if (!wdt)
  return -ENXIO;

 soft = wdt->max_timer_ms < WDT_SOFTTIMER_THRESHOLD * 1000;

 if (soft) {
  wdt->wdd.ops = &bcm47xx_wdt_soft_ops;
  timer_setup(&wdt->soft_timer, bcm47xx_wdt_soft_timer_tick, 0);
 } else {
  wdt->wdd.ops = &bcm47xx_wdt_hard_ops;
 }

 wdt->wdd.info = &bcm47xx_wdt_info;
 wdt->wdd.timeout = WDT_DEFAULT_TIME;
 wdt->wdd.parent = &pdev->dev;
 ret = wdt->wdd.ops->set_timeout(&wdt->wdd, timeout);
 if (ret)
  goto err_timer;
 watchdog_set_nowayout(&wdt->wdd, nowayout);
 watchdog_set_restart_priority(&wdt->wdd, 64);
 watchdog_stop_on_reboot(&wdt->wdd);

 ret = watchdog_register_device(&wdt->wdd);
 if (ret)
  goto err_timer;

 dev_info(&pdev->dev, "BCM47xx Watchdog Timer enabled (%d seconds%s%s)\n",
  timeout, nowayout ? ", nowayout" : "",
  soft ? ", Software Timer" : "");
 return 0;

err_timer:
 if (soft)
  del_timer_sync(&wdt->soft_timer);

 return ret;
}
