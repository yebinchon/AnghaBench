
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int min_timeout; int timeout; struct device* parent; int max_timeout; int * ops; int * info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct davinci_wdt_device {int base; struct watchdog_device wdd; int clk; } ;


 int DEFAULT_HEARTBEAT ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX_HEARTBEAT ;
 int PTR_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int davinci_clk_disable_unprepare ;
 int davinci_wdt_info ;
 int davinci_wdt_ops ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ) ;
 int devm_add_action_or_reset (struct device*,int ,int ) ;
 int devm_clk_get (struct device*,int *) ;
 struct davinci_wdt_device* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 int heartbeat ;
 int platform_set_drvdata (struct platform_device*,struct davinci_wdt_device*) ;
 int watchdog_init_timeout (struct watchdog_device*,int ,struct device*) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct davinci_wdt_device*) ;
 int watchdog_set_nowayout (struct watchdog_device*,int) ;
 int watchdog_set_restart_priority (struct watchdog_device*,int) ;

__attribute__((used)) static int davinci_wdt_probe(struct platform_device *pdev)
{
 int ret = 0;
 struct device *dev = &pdev->dev;
 struct watchdog_device *wdd;
 struct davinci_wdt_device *davinci_wdt;

 davinci_wdt = devm_kzalloc(dev, sizeof(*davinci_wdt), GFP_KERNEL);
 if (!davinci_wdt)
  return -ENOMEM;

 davinci_wdt->clk = devm_clk_get(dev, ((void*)0));

 if (IS_ERR(davinci_wdt->clk)) {
  if (PTR_ERR(davinci_wdt->clk) != -EPROBE_DEFER)
   dev_err(dev, "failed to get clock node\n");
  return PTR_ERR(davinci_wdt->clk);
 }

 ret = clk_prepare_enable(davinci_wdt->clk);
 if (ret) {
  dev_err(dev, "failed to prepare clock\n");
  return ret;
 }
 ret = devm_add_action_or_reset(dev, davinci_clk_disable_unprepare,
           davinci_wdt->clk);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, davinci_wdt);

 wdd = &davinci_wdt->wdd;
 wdd->info = &davinci_wdt_info;
 wdd->ops = &davinci_wdt_ops;
 wdd->min_timeout = 1;
 wdd->max_timeout = MAX_HEARTBEAT;
 wdd->timeout = DEFAULT_HEARTBEAT;
 wdd->parent = dev;

 watchdog_init_timeout(wdd, heartbeat, dev);

 dev_info(dev, "heartbeat %d sec\n", wdd->timeout);

 watchdog_set_drvdata(wdd, davinci_wdt);
 watchdog_set_nowayout(wdd, 1);
 watchdog_set_restart_priority(wdd, 128);

 davinci_wdt->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(davinci_wdt->base))
  return PTR_ERR(davinci_wdt->base);

 return devm_watchdog_register_device(dev, wdd);
}
