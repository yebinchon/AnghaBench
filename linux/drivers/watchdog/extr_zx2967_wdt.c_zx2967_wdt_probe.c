
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int timeout; struct device* parent; int min_timeout; int max_timeout; int * ops; int * info; } ;
struct zx2967_wdt {TYPE_1__ wdt_device; struct reset_control* clock; struct reset_control* reg_base; } ;
struct reset_control {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct reset_control*) ;
 int PTR_ERR (struct reset_control*) ;
 int WATCHDOG_NOWAYOUT ;
 int ZX2967_WDT_CLK_FREQ ;
 int ZX2967_WDT_DEFAULT_TIMEOUT ;
 int ZX2967_WDT_MAX_TIMEOUT ;
 int ZX2967_WDT_MIN_TIMEOUT ;
 int clk_prepare_enable (struct reset_control*) ;
 int clk_set_rate (struct reset_control*,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int ,int ) ;
 int devm_add_action_or_reset (struct device*,int ,struct reset_control*) ;
 struct reset_control* devm_clk_get (struct device*,int *) ;
 struct zx2967_wdt* devm_kzalloc (struct device*,int,int ) ;
 struct reset_control* devm_platform_ioremap_resource (struct platform_device*,int ) ;
 struct reset_control* devm_reset_control_get_exclusive (struct device*,int *) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int platform_set_drvdata (struct platform_device*,struct zx2967_wdt*) ;
 int reset_control_assert (struct reset_control*) ;
 int reset_control_deassert (struct reset_control*) ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct zx2967_wdt*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 int zx2967_clk_disable_unprepare ;
 int zx2967_wdt_ident ;
 int zx2967_wdt_ops ;
 int zx2967_wdt_reset_sysctrl (struct device*) ;

__attribute__((used)) static int zx2967_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct zx2967_wdt *wdt;
 int ret;
 struct reset_control *rstc;

 wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 platform_set_drvdata(pdev, wdt);

 wdt->wdt_device.info = &zx2967_wdt_ident;
 wdt->wdt_device.ops = &zx2967_wdt_ops;
 wdt->wdt_device.timeout = ZX2967_WDT_DEFAULT_TIMEOUT;
 wdt->wdt_device.max_timeout = ZX2967_WDT_MAX_TIMEOUT;
 wdt->wdt_device.min_timeout = ZX2967_WDT_MIN_TIMEOUT;
 wdt->wdt_device.parent = dev;

 wdt->reg_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(wdt->reg_base))
  return PTR_ERR(wdt->reg_base);

 zx2967_wdt_reset_sysctrl(dev);

 wdt->clock = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(wdt->clock)) {
  dev_err(dev, "failed to find watchdog clock source\n");
  return PTR_ERR(wdt->clock);
 }

 ret = clk_prepare_enable(wdt->clock);
 if (ret < 0) {
  dev_err(dev, "failed to enable clock\n");
  return ret;
 }
 ret = devm_add_action_or_reset(dev, zx2967_clk_disable_unprepare,
           wdt->clock);
 if (ret)
  return ret;
 clk_set_rate(wdt->clock, ZX2967_WDT_CLK_FREQ);

 rstc = devm_reset_control_get_exclusive(dev, ((void*)0));
 if (IS_ERR(rstc)) {
  dev_err(dev, "failed to get rstc");
  return PTR_ERR(rstc);
 }

 reset_control_assert(rstc);
 reset_control_deassert(rstc);

 watchdog_set_drvdata(&wdt->wdt_device, wdt);
 watchdog_init_timeout(&wdt->wdt_device,
   ZX2967_WDT_DEFAULT_TIMEOUT, dev);
 watchdog_set_nowayout(&wdt->wdt_device, WATCHDOG_NOWAYOUT);

 ret = devm_watchdog_register_device(dev, &wdt->wdt_device);
 if (ret)
  return ret;

 dev_info(dev, "watchdog enabled (timeout=%d sec, nowayout=%d)",
   wdt->wdt_device.timeout, WATCHDOG_NOWAYOUT);

 return 0;
}
