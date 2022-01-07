
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct platform_device {int dev; int name; } ;
struct TYPE_11__ {int min_timeout; unsigned int timeout; unsigned int max_timeout; int status; int * parent; int * ops; TYPE_8__* info; } ;
struct orion_watchdog {unsigned int clk_rate; int clk; TYPE_2__ wdt; TYPE_1__* data; } ;
struct of_device_id {TYPE_1__* data; } ;
struct TYPE_12__ {int options; } ;
struct TYPE_10__ {int (* clock_init ) (struct platform_device*,struct orion_watchdog*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WDIOF_PRETIMEOUT ;
 int WDOG_HW_RUNNING ;
 unsigned int WDT_MAX_CYCLE_COUNT ;
 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int dev_err (int *,char*) ;
 struct orion_watchdog* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct orion_watchdog*) ;
 int heartbeat ;
 scalar_t__ nowayout ;
 struct of_device_id* of_match_device (struct of_device_id*,int *) ;
 int orion_wdt_enabled (TYPE_2__*) ;
 int orion_wdt_get_regs (struct platform_device*,struct orion_watchdog*) ;
 TYPE_8__ orion_wdt_info ;
 int orion_wdt_irq ;
 struct of_device_id* orion_wdt_of_match_table ;
 int orion_wdt_ops ;
 int orion_wdt_pre_irq ;
 int orion_wdt_stop (TYPE_2__*) ;
 int platform_get_irq (struct platform_device*,int) ;
 int platform_set_drvdata (struct platform_device*,TYPE_2__*) ;
 int pr_info (char*,unsigned int,char*) ;
 int set_bit (int ,int *) ;
 int stub1 (struct platform_device*,struct orion_watchdog*) ;
 int watchdog_init_timeout (TYPE_2__*,int ,int *) ;
 int watchdog_register_device (TYPE_2__*) ;
 int watchdog_set_drvdata (TYPE_2__*,struct orion_watchdog*) ;
 int watchdog_set_nowayout (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int orion_wdt_probe(struct platform_device *pdev)
{
 struct orion_watchdog *dev;
 const struct of_device_id *match;
 unsigned int wdt_max_duration;
 int ret, irq;

 dev = devm_kzalloc(&pdev->dev, sizeof(struct orion_watchdog),
      GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 match = of_match_device(orion_wdt_of_match_table, &pdev->dev);
 if (!match)

  match = &orion_wdt_of_match_table[0];

 dev->wdt.info = &orion_wdt_info;
 dev->wdt.ops = &orion_wdt_ops;
 dev->wdt.min_timeout = 1;
 dev->data = match->data;

 ret = orion_wdt_get_regs(pdev, dev);
 if (ret)
  return ret;

 ret = dev->data->clock_init(pdev, dev);
 if (ret) {
  dev_err(&pdev->dev, "cannot initialize clock\n");
  return ret;
 }

 wdt_max_duration = WDT_MAX_CYCLE_COUNT / dev->clk_rate;

 dev->wdt.timeout = wdt_max_duration;
 dev->wdt.max_timeout = wdt_max_duration;
 dev->wdt.parent = &pdev->dev;
 watchdog_init_timeout(&dev->wdt, heartbeat, &pdev->dev);

 platform_set_drvdata(pdev, &dev->wdt);
 watchdog_set_drvdata(&dev->wdt, dev);







 if (!orion_wdt_enabled(&dev->wdt))
  orion_wdt_stop(&dev->wdt);
 else
  set_bit(WDOG_HW_RUNNING, &dev->wdt.status);


 irq = platform_get_irq(pdev, 0);
 if (irq > 0) {




  ret = devm_request_irq(&pdev->dev, irq, orion_wdt_irq, 0,
           pdev->name, dev);
  if (ret < 0) {
   dev_err(&pdev->dev, "failed to request IRQ\n");
   goto disable_clk;
  }
 }


 irq = platform_get_irq(pdev, 1);
 if (irq > 0) {
  orion_wdt_info.options |= WDIOF_PRETIMEOUT;
  ret = devm_request_irq(&pdev->dev, irq, orion_wdt_pre_irq,
           0, pdev->name, dev);
  if (ret < 0) {
   dev_err(&pdev->dev, "failed to request IRQ\n");
   goto disable_clk;
  }
 }


 watchdog_set_nowayout(&dev->wdt, nowayout);
 ret = watchdog_register_device(&dev->wdt);
 if (ret)
  goto disable_clk;

 pr_info("Initial timeout %d sec%s\n",
  dev->wdt.timeout, nowayout ? ", nowayout" : "");
 return 0;

disable_clk:
 clk_disable_unprepare(dev->clk);
 clk_put(dev->clk);
 return ret;
}
