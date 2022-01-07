
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; struct device* parent; int max_timeout; int min_timeout; int * ops; int * info; } ;
struct device {int of_node; } ;
struct platform_device {int name; struct device dev; } ;
struct cdns_wdt {int regs; int io_lock; int ctrl_clksel; int prescaler; int clk; int rst; struct watchdog_device cdns_wdt_device; } ;


 unsigned long CDNS_WDT_CLK_75MHZ ;
 int CDNS_WDT_DEFAULT_TIMEOUT ;
 int CDNS_WDT_MAX_TIMEOUT ;
 int CDNS_WDT_MIN_TIMEOUT ;
 int CDNS_WDT_PRESCALE_4096 ;
 int CDNS_WDT_PRESCALE_512 ;
 int CDNS_WDT_PRESCALE_SELECT_4096 ;
 int CDNS_WDT_PRESCALE_SELECT_512 ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int cdns_clk_disable_unprepare ;
 int cdns_wdt_info ;
 int cdns_wdt_irq_handler ;
 int cdns_wdt_ops ;
 unsigned long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int ,int ,char*) ;
 int devm_add_action_or_reset (struct device*,int ,int ) ;
 int devm_clk_get (struct device*,int *) ;
 struct cdns_wdt* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct platform_device*) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 scalar_t__ nowayout ;
 int of_property_read_bool (int ,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct cdns_wdt*) ;
 int spin_lock_init (int *) ;
 int watchdog_init_timeout (struct watchdog_device*,int ,struct device*) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct cdns_wdt*) ;
 int watchdog_set_nowayout (struct watchdog_device*,scalar_t__) ;
 int watchdog_stop_on_reboot (struct watchdog_device*) ;
 int watchdog_stop_on_unregister (struct watchdog_device*) ;
 int wdt_timeout ;

__attribute__((used)) static int cdns_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int ret, irq;
 unsigned long clock_f;
 struct cdns_wdt *wdt;
 struct watchdog_device *cdns_wdt_device;

 wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 cdns_wdt_device = &wdt->cdns_wdt_device;
 cdns_wdt_device->info = &cdns_wdt_info;
 cdns_wdt_device->ops = &cdns_wdt_ops;
 cdns_wdt_device->timeout = CDNS_WDT_DEFAULT_TIMEOUT;
 cdns_wdt_device->min_timeout = CDNS_WDT_MIN_TIMEOUT;
 cdns_wdt_device->max_timeout = CDNS_WDT_MAX_TIMEOUT;

 wdt->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(wdt->regs))
  return PTR_ERR(wdt->regs);


 wdt->rst = of_property_read_bool(dev->of_node, "reset-on-timeout");
 irq = platform_get_irq(pdev, 0);
 if (!wdt->rst && irq >= 0) {
  ret = devm_request_irq(dev, irq, cdns_wdt_irq_handler, 0,
           pdev->name, pdev);
  if (ret) {
   dev_err(dev,
    "cannot register interrupt handler err=%d\n",
    ret);
   return ret;
  }
 }


 cdns_wdt_device->parent = dev;

 watchdog_init_timeout(cdns_wdt_device, wdt_timeout, dev);
 watchdog_set_nowayout(cdns_wdt_device, nowayout);
 watchdog_stop_on_reboot(cdns_wdt_device);
 watchdog_set_drvdata(cdns_wdt_device, wdt);

 wdt->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(wdt->clk)) {
  dev_err(dev, "input clock not found\n");
  return PTR_ERR(wdt->clk);
 }

 ret = clk_prepare_enable(wdt->clk);
 if (ret) {
  dev_err(dev, "unable to enable clock\n");
  return ret;
 }
 ret = devm_add_action_or_reset(dev, cdns_clk_disable_unprepare,
           wdt->clk);
 if (ret)
  return ret;

 clock_f = clk_get_rate(wdt->clk);
 if (clock_f <= CDNS_WDT_CLK_75MHZ) {
  wdt->prescaler = CDNS_WDT_PRESCALE_512;
  wdt->ctrl_clksel = CDNS_WDT_PRESCALE_SELECT_512;
 } else {
  wdt->prescaler = CDNS_WDT_PRESCALE_4096;
  wdt->ctrl_clksel = CDNS_WDT_PRESCALE_SELECT_4096;
 }

 spin_lock_init(&wdt->io_lock);

 watchdog_stop_on_reboot(cdns_wdt_device);
 watchdog_stop_on_unregister(cdns_wdt_device);
 ret = devm_watchdog_register_device(dev, cdns_wdt_device);
 if (ret)
  return ret;
 platform_set_drvdata(pdev, wdt);

 dev_info(dev, "Xilinx Watchdog Timer at %p with timeout %ds%s\n",
   wdt->regs, cdns_wdt_device->timeout,
   nowayout ? ", nowayout" : "");

 return 0;
}
