
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* timeout; struct device* parent; int min_timeout; void* max_timeout; int * ops; int * info; } ;
struct sunxi_wdt_dev {TYPE_1__ wdt_dev; int wdt_base; int wdt_regs; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int EINVAL ;
 int ENODEV ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 void* WDT_MAX_TIMEOUT ;
 int WDT_MIN_TIMEOUT ;
 int dev_info (struct device*,char*,void*,int ) ;
 struct sunxi_wdt_dev* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int nowayout ;
 int of_device_get_match_data (struct device*) ;
 int sunxi_wdt_info ;
 int sunxi_wdt_ops ;
 int sunxi_wdt_stop (TYPE_1__*) ;
 int timeout ;
 scalar_t__ unlikely (int) ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct sunxi_wdt_dev*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 int watchdog_set_restart_priority (TYPE_1__*,int) ;
 int watchdog_stop_on_reboot (TYPE_1__*) ;

__attribute__((used)) static int sunxi_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct sunxi_wdt_dev *sunxi_wdt;
 int err;

 sunxi_wdt = devm_kzalloc(dev, sizeof(*sunxi_wdt), GFP_KERNEL);
 if (!sunxi_wdt)
  return -EINVAL;

 sunxi_wdt->wdt_regs = of_device_get_match_data(dev);
 if (!sunxi_wdt->wdt_regs)
  return -ENODEV;

 sunxi_wdt->wdt_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(sunxi_wdt->wdt_base))
  return PTR_ERR(sunxi_wdt->wdt_base);

 sunxi_wdt->wdt_dev.info = &sunxi_wdt_info;
 sunxi_wdt->wdt_dev.ops = &sunxi_wdt_ops;
 sunxi_wdt->wdt_dev.timeout = WDT_MAX_TIMEOUT;
 sunxi_wdt->wdt_dev.max_timeout = WDT_MAX_TIMEOUT;
 sunxi_wdt->wdt_dev.min_timeout = WDT_MIN_TIMEOUT;
 sunxi_wdt->wdt_dev.parent = dev;

 watchdog_init_timeout(&sunxi_wdt->wdt_dev, timeout, dev);
 watchdog_set_nowayout(&sunxi_wdt->wdt_dev, nowayout);
 watchdog_set_restart_priority(&sunxi_wdt->wdt_dev, 128);

 watchdog_set_drvdata(&sunxi_wdt->wdt_dev, sunxi_wdt);

 sunxi_wdt_stop(&sunxi_wdt->wdt_dev);

 watchdog_stop_on_reboot(&sunxi_wdt->wdt_dev);
 err = devm_watchdog_register_device(dev, &sunxi_wdt->wdt_dev);
 if (unlikely(err))
  return err;

 dev_info(dev, "Watchdog enabled (timeout=%d sec, nowayout=%d)",
   sunxi_wdt->wdt_dev.timeout, nowayout);

 return 0;
}
