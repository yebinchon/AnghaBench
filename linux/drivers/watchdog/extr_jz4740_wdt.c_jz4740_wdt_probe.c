
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; int min_timeout; int max_timeout; struct device* parent; int * ops; int * info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct jz4740_wdt_drvdata {struct watchdog_device wdt; int rtc_clk; int base; } ;


 int DEFAULT_HEARTBEAT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_HEARTBEAT ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 int devm_clk_get (struct device*,char*) ;
 struct jz4740_wdt_drvdata* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 int heartbeat ;
 int jz4740_wdt_info ;
 int jz4740_wdt_ops ;
 int nowayout ;
 int watchdog_set_drvdata (struct watchdog_device*,struct jz4740_wdt_drvdata*) ;
 int watchdog_set_nowayout (struct watchdog_device*,int ) ;

__attribute__((used)) static int jz4740_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct jz4740_wdt_drvdata *drvdata;
 struct watchdog_device *jz4740_wdt;

 drvdata = devm_kzalloc(dev, sizeof(struct jz4740_wdt_drvdata),
          GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;

 if (heartbeat < 1 || heartbeat > MAX_HEARTBEAT)
  heartbeat = DEFAULT_HEARTBEAT;

 jz4740_wdt = &drvdata->wdt;
 jz4740_wdt->info = &jz4740_wdt_info;
 jz4740_wdt->ops = &jz4740_wdt_ops;
 jz4740_wdt->timeout = heartbeat;
 jz4740_wdt->min_timeout = 1;
 jz4740_wdt->max_timeout = MAX_HEARTBEAT;
 jz4740_wdt->parent = dev;
 watchdog_set_nowayout(jz4740_wdt, nowayout);
 watchdog_set_drvdata(jz4740_wdt, drvdata);

 drvdata->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(drvdata->base))
  return PTR_ERR(drvdata->base);

 drvdata->rtc_clk = devm_clk_get(dev, "rtc");
 if (IS_ERR(drvdata->rtc_clk)) {
  dev_err(dev, "cannot find RTC clock\n");
  return PTR_ERR(drvdata->rtc_clk);
 }

 return devm_watchdog_register_device(dev, &drvdata->wdt);
}
