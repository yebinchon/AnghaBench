
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int min_timeout; unsigned long max_hw_heartbeat_ms; struct device* parent; int timeout; int * ops; int * info; } ;
struct device {int dummy; } ;
struct platform_device {int name; struct device dev; } ;
struct ls1x_wdt_drvdata {unsigned long clk_rate; struct watchdog_device wdt; int clk; int base; } ;


 int DEFAULT_HEARTBEAT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 unsigned long U32_MAX ;
 unsigned long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int devm_add_action_or_reset (struct device*,int ,int ) ;
 int devm_clk_get (struct device*,int ) ;
 struct ls1x_wdt_drvdata* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 int heartbeat ;
 int ls1x_clk_disable_unprepare ;
 int ls1x_wdt_info ;
 int ls1x_wdt_ops ;
 int nowayout ;
 int platform_set_drvdata (struct platform_device*,struct ls1x_wdt_drvdata*) ;
 int watchdog_init_timeout (struct watchdog_device*,int ,struct device*) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct ls1x_wdt_drvdata*) ;
 int watchdog_set_nowayout (struct watchdog_device*,int ) ;

__attribute__((used)) static int ls1x_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct ls1x_wdt_drvdata *drvdata;
 struct watchdog_device *ls1x_wdt;
 unsigned long clk_rate;
 int err;

 drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;

 drvdata->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(drvdata->base))
  return PTR_ERR(drvdata->base);

 drvdata->clk = devm_clk_get(dev, pdev->name);
 if (IS_ERR(drvdata->clk))
  return PTR_ERR(drvdata->clk);

 err = clk_prepare_enable(drvdata->clk);
 if (err) {
  dev_err(dev, "clk enable failed\n");
  return err;
 }
 err = devm_add_action_or_reset(dev, ls1x_clk_disable_unprepare,
           drvdata->clk);
 if (err)
  return err;

 clk_rate = clk_get_rate(drvdata->clk);
 if (!clk_rate)
  return -EINVAL;
 drvdata->clk_rate = clk_rate;

 ls1x_wdt = &drvdata->wdt;
 ls1x_wdt->info = &ls1x_wdt_info;
 ls1x_wdt->ops = &ls1x_wdt_ops;
 ls1x_wdt->timeout = DEFAULT_HEARTBEAT;
 ls1x_wdt->min_timeout = 1;
 ls1x_wdt->max_hw_heartbeat_ms = U32_MAX / clk_rate * 1000;
 ls1x_wdt->parent = dev;

 watchdog_init_timeout(ls1x_wdt, heartbeat, dev);
 watchdog_set_nowayout(ls1x_wdt, nowayout);
 watchdog_set_drvdata(ls1x_wdt, drvdata);

 err = devm_watchdog_register_device(dev, &drvdata->wdt);
 if (err)
  return err;

 platform_set_drvdata(pdev, drvdata);

 dev_info(dev, "Loongson1 Watchdog driver registered\n");

 return 0;
}
