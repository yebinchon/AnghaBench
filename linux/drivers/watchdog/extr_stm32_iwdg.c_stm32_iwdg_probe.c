
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int max_hw_heartbeat_ms; int min_timeout; int * ops; int * info; struct device* parent; } ;
struct stm32_iwdg {int rate; TYPE_1__* data; struct watchdog_device wdd; int regs; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int max_prescaler; } ;


 int DIV_ROUND_UP (int,int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PR_MIN ;
 int PTR_ERR (int ) ;
 int RLR_MAX ;
 int RLR_MIN ;
 int WATCHDOG_NOWAYOUT ;
 int dev_err (struct device*,char*) ;
 struct stm32_iwdg* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 TYPE_1__* of_device_get_match_data (struct device*) ;
 int platform_set_drvdata (struct platform_device*,struct stm32_iwdg*) ;
 int stm32_iwdg_clk_init (struct platform_device*,struct stm32_iwdg*) ;
 int stm32_iwdg_info ;
 int stm32_iwdg_ops ;
 int watchdog_init_timeout (struct watchdog_device*,int ,struct device*) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct stm32_iwdg*) ;
 int watchdog_set_nowayout (struct watchdog_device*,int ) ;

__attribute__((used)) static int stm32_iwdg_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct watchdog_device *wdd;
 struct stm32_iwdg *wdt;
 int ret;

 wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 wdt->data = of_device_get_match_data(&pdev->dev);
 if (!wdt->data)
  return -ENODEV;


 wdt->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(wdt->regs)) {
  dev_err(dev, "Could not get resource\n");
  return PTR_ERR(wdt->regs);
 }

 ret = stm32_iwdg_clk_init(pdev, wdt);
 if (ret)
  return ret;


 wdd = &wdt->wdd;
 wdd->parent = dev;
 wdd->info = &stm32_iwdg_info;
 wdd->ops = &stm32_iwdg_ops;
 wdd->min_timeout = DIV_ROUND_UP((RLR_MIN + 1) * PR_MIN, wdt->rate);
 wdd->max_hw_heartbeat_ms = ((RLR_MAX + 1) * wdt->data->max_prescaler *
        1000) / wdt->rate;

 watchdog_set_drvdata(wdd, wdt);
 watchdog_set_nowayout(wdd, WATCHDOG_NOWAYOUT);
 watchdog_init_timeout(wdd, 0, dev);

 ret = devm_watchdog_register_device(dev, wdd);
 if (ret)
  return ret;

 platform_set_drvdata(pdev, wdt);

 return 0;
}
