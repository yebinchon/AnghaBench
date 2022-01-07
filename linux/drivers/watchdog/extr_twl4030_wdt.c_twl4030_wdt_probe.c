
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; int min_timeout; int max_timeout; struct device* parent; scalar_t__ status; int * ops; int * info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct watchdog_device* devm_kzalloc (struct device*,int,int ) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 int nowayout ;
 int platform_set_drvdata (struct platform_device*,struct watchdog_device*) ;
 int twl4030_wdt_info ;
 int twl4030_wdt_ops ;
 int twl4030_wdt_stop (struct watchdog_device*) ;
 int watchdog_set_nowayout (struct watchdog_device*,int ) ;

__attribute__((used)) static int twl4030_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct watchdog_device *wdt;

 wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 wdt->info = &twl4030_wdt_info;
 wdt->ops = &twl4030_wdt_ops;
 wdt->status = 0;
 wdt->timeout = 30;
 wdt->min_timeout = 1;
 wdt->max_timeout = 30;
 wdt->parent = dev;

 watchdog_set_nowayout(wdt, nowayout);
 platform_set_drvdata(pdev, wdt);

 twl4030_wdt_stop(wdt);

 return devm_watchdog_register_device(dev, wdt);
}
