
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int min_timeout; int max_hw_heartbeat_ms; int timeout; int status; struct device* parent; int * ops; int * info; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct dw_wdt {scalar_t__ rate; int clk; struct watchdog_device wdd; int rst; int regs; } ;


 int DW_WDT_DEFAULT_SECONDS ;
 int DW_WDT_MAX_TOP ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int WDOG_HW_RUNNING ;
 int clk_disable_unprepare (int ) ;
 scalar_t__ clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int devm_clk_get (struct device*,int *) ;
 struct dw_wdt* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_reset_control_get_optional_shared (struct device*,int *) ;
 int dw_wdt_get_top (struct dw_wdt*) ;
 int dw_wdt_ident ;
 scalar_t__ dw_wdt_is_enabled (struct dw_wdt*) ;
 int dw_wdt_ops ;
 int dw_wdt_top_in_seconds (struct dw_wdt*,int ) ;
 int nowayout ;
 int platform_set_drvdata (struct platform_device*,struct dw_wdt*) ;
 int reset_control_deassert (int ) ;
 int set_bit (int ,int *) ;
 int watchdog_init_timeout (struct watchdog_device*,int ,struct device*) ;
 int watchdog_register_device (struct watchdog_device*) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct dw_wdt*) ;
 int watchdog_set_nowayout (struct watchdog_device*,int ) ;
 int watchdog_set_restart_priority (struct watchdog_device*,int) ;

__attribute__((used)) static int dw_wdt_drv_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct watchdog_device *wdd;
 struct dw_wdt *dw_wdt;
 int ret;

 dw_wdt = devm_kzalloc(dev, sizeof(*dw_wdt), GFP_KERNEL);
 if (!dw_wdt)
  return -ENOMEM;

 dw_wdt->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(dw_wdt->regs))
  return PTR_ERR(dw_wdt->regs);

 dw_wdt->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(dw_wdt->clk))
  return PTR_ERR(dw_wdt->clk);

 ret = clk_prepare_enable(dw_wdt->clk);
 if (ret)
  return ret;

 dw_wdt->rate = clk_get_rate(dw_wdt->clk);
 if (dw_wdt->rate == 0) {
  ret = -EINVAL;
  goto out_disable_clk;
 }

 dw_wdt->rst = devm_reset_control_get_optional_shared(&pdev->dev, ((void*)0));
 if (IS_ERR(dw_wdt->rst)) {
  ret = PTR_ERR(dw_wdt->rst);
  goto out_disable_clk;
 }

 reset_control_deassert(dw_wdt->rst);

 wdd = &dw_wdt->wdd;
 wdd->info = &dw_wdt_ident;
 wdd->ops = &dw_wdt_ops;
 wdd->min_timeout = 1;
 wdd->max_hw_heartbeat_ms =
  dw_wdt_top_in_seconds(dw_wdt, DW_WDT_MAX_TOP) * 1000;
 wdd->parent = dev;

 watchdog_set_drvdata(wdd, dw_wdt);
 watchdog_set_nowayout(wdd, nowayout);
 watchdog_init_timeout(wdd, 0, dev);






 if (dw_wdt_is_enabled(dw_wdt)) {
  wdd->timeout = dw_wdt_get_top(dw_wdt);
  set_bit(WDOG_HW_RUNNING, &wdd->status);
 } else {
  wdd->timeout = DW_WDT_DEFAULT_SECONDS;
  watchdog_init_timeout(wdd, 0, dev);
 }

 platform_set_drvdata(pdev, dw_wdt);

 watchdog_set_restart_priority(wdd, 128);

 ret = watchdog_register_device(wdd);
 if (ret)
  goto out_disable_clk;

 return 0;

out_disable_clk:
 clk_disable_unprepare(dw_wdt->clk);
 return ret;
}
