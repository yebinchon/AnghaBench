
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int min_timeout; int max_hw_heartbeat_ms; int status; int timeout; int * ops; int * info; int * parent; } ;
struct tangox_wdt_device {int clk_rate; TYPE_1__ wdt; scalar_t__ base; scalar_t__ clk; } ;
struct platform_device {int dev; } ;


 int DEFAULT_TIMEOUT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int U32_MAX ;
 int WDOG_HW_RUNNING ;
 scalar_t__ WD_CONFIG ;
 int WD_CONFIG_DISABLE ;
 int WD_CONFIG_XTAL_IN ;
 scalar_t__ WD_COUNTER ;
 int clk_get_rate (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_info (int *,char*) ;
 int devm_add_action_or_reset (int *,int ,scalar_t__) ;
 scalar_t__ devm_clk_get (int *,int *) ;
 struct tangox_wdt_device* devm_kzalloc (int *,int,int ) ;
 scalar_t__ devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (int *,TYPE_1__*) ;
 int nowayout ;
 int platform_set_drvdata (struct platform_device*,struct tangox_wdt_device*) ;
 int readl (scalar_t__) ;
 int set_bit (int ,int *) ;
 int tangox_clk_disable_unprepare ;
 int tangox_wdt_info ;
 int tangox_wdt_ops ;
 int tangox_wdt_start (TYPE_1__*) ;
 int timeout ;
 int watchdog_init_timeout (TYPE_1__*,int ,int *) ;
 int watchdog_set_drvdata (TYPE_1__*,struct tangox_wdt_device*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 int watchdog_set_restart_priority (TYPE_1__*,int) ;
 int watchdog_stop_on_unregister (TYPE_1__*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int tangox_wdt_probe(struct platform_device *pdev)
{
 struct tangox_wdt_device *dev;
 u32 config;
 int err;

 dev = devm_kzalloc(&pdev->dev, sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return -ENOMEM;

 dev->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(dev->base))
  return PTR_ERR(dev->base);

 dev->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(dev->clk))
  return PTR_ERR(dev->clk);

 err = clk_prepare_enable(dev->clk);
 if (err)
  return err;
 err = devm_add_action_or_reset(&pdev->dev,
           tangox_clk_disable_unprepare, dev->clk);
 if (err)
  return err;

 dev->clk_rate = clk_get_rate(dev->clk);
 if (!dev->clk_rate)
  return -EINVAL;

 dev->wdt.parent = &pdev->dev;
 dev->wdt.info = &tangox_wdt_info;
 dev->wdt.ops = &tangox_wdt_ops;
 dev->wdt.timeout = DEFAULT_TIMEOUT;
 dev->wdt.min_timeout = 1;
 dev->wdt.max_hw_heartbeat_ms = (U32_MAX - 1) / dev->clk_rate;

 watchdog_init_timeout(&dev->wdt, timeout, &pdev->dev);
 watchdog_set_nowayout(&dev->wdt, nowayout);
 watchdog_set_drvdata(&dev->wdt, dev);





 config = readl(dev->base + WD_CONFIG);
 if (config & WD_CONFIG_DISABLE)
  writel(0, dev->base + WD_COUNTER);

 writel(WD_CONFIG_XTAL_IN, dev->base + WD_CONFIG);





 if (readl(dev->base + WD_COUNTER)) {
  set_bit(WDOG_HW_RUNNING, &dev->wdt.status);
  tangox_wdt_start(&dev->wdt);
 }

 watchdog_set_restart_priority(&dev->wdt, 128);

 watchdog_stop_on_unregister(&dev->wdt);
 err = devm_watchdog_register_device(&pdev->dev, &dev->wdt);
 if (err)
  return err;

 platform_set_drvdata(pdev, dev);

 dev_info(&pdev->dev, "SMP86xx/SMP87xx watchdog registered\n");

 return 0;
}
