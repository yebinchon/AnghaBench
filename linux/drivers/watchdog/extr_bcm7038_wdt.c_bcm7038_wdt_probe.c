
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_5__ {int max_timeout; struct device* parent; int timeout; int min_timeout; int * ops; int * info; } ;
struct bcm7038_watchdog {int rate; TYPE_1__ wdd; int * clk; int * base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 void* WDT_DEFAULT_RATE ;
 int WDT_DEFAULT_TIMEOUT ;
 int WDT_MIN_TIMEOUT ;
 int bcm7038_clk_disable_unprepare ;
 int bcm7038_wdt_info ;
 int bcm7038_wdt_ops ;
 int clk_get_rate (int *) ;
 int clk_prepare_enable (int *) ;
 int dev_info (struct device*,char*) ;
 int devm_add_action_or_reset (struct device*,int ,int *) ;
 int * devm_clk_get (struct device*,int *) ;
 struct bcm7038_watchdog* devm_kzalloc (struct device*,int,int ) ;
 int * devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,struct bcm7038_watchdog*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct bcm7038_watchdog*) ;
 int watchdog_stop_on_reboot (TYPE_1__*) ;
 int watchdog_stop_on_unregister (TYPE_1__*) ;

__attribute__((used)) static int bcm7038_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct bcm7038_watchdog *wdt;
 int err;

 wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 platform_set_drvdata(pdev, wdt);

 wdt->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(wdt->base))
  return PTR_ERR(wdt->base);

 wdt->clk = devm_clk_get(dev, ((void*)0));

 if (!IS_ERR(wdt->clk)) {
  err = clk_prepare_enable(wdt->clk);
  if (err)
   return err;
  err = devm_add_action_or_reset(dev,
            bcm7038_clk_disable_unprepare,
            wdt->clk);
  if (err)
   return err;
  wdt->rate = clk_get_rate(wdt->clk);

  if (!wdt->rate)
   wdt->rate = WDT_DEFAULT_RATE;
 } else {
  wdt->rate = WDT_DEFAULT_RATE;
  wdt->clk = ((void*)0);
 }

 wdt->wdd.info = &bcm7038_wdt_info;
 wdt->wdd.ops = &bcm7038_wdt_ops;
 wdt->wdd.min_timeout = WDT_MIN_TIMEOUT;
 wdt->wdd.timeout = WDT_DEFAULT_TIMEOUT;
 wdt->wdd.max_timeout = 0xffffffff / wdt->rate;
 wdt->wdd.parent = dev;
 watchdog_set_drvdata(&wdt->wdd, wdt);

 watchdog_stop_on_reboot(&wdt->wdd);
 watchdog_stop_on_unregister(&wdt->wdd);
 err = devm_watchdog_register_device(dev, &wdt->wdd);
 if (err)
  return err;

 dev_info(dev, "Registered BCM7038 Watchdog\n");

 return 0;
}
