
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {struct device* parent; int timeout; int max_timeout; int min_timeout; int * ops; int * info; } ;
struct resource {scalar_t__ start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct nic7018_wdt {scalar_t__ io_base; struct watchdog_device wdd; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 int KBUILD_MODNAME ;
 int LOCK ;
 int UNLOCK ;
 int WDT_DEFAULT_TIMEOUT ;
 int WDT_MAX_TIMEOUT ;
 int WDT_MIN_TIMEOUT ;
 scalar_t__ WDT_REG_LOCK ;
 int dev_dbg (struct device*,char*,scalar_t__,int ,int ) ;
 int dev_err (struct device*,char*) ;
 struct nic7018_wdt* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_region (struct device*,scalar_t__,int ,int ) ;
 int nic7018_wdd_info ;
 int nic7018_wdd_ops ;
 int nowayout ;
 int outb (int ,scalar_t__) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct nic7018_wdt*) ;
 int resource_size (struct resource*) ;
 int timeout ;
 int watchdog_init_timeout (struct watchdog_device*,int ,struct device*) ;
 int watchdog_register_device (struct watchdog_device*) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct nic7018_wdt*) ;
 int watchdog_set_nowayout (struct watchdog_device*,int ) ;

__attribute__((used)) static int nic7018_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct watchdog_device *wdd;
 struct nic7018_wdt *wdt;
 struct resource *io_rc;
 int ret;

 wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 platform_set_drvdata(pdev, wdt);

 io_rc = platform_get_resource(pdev, IORESOURCE_IO, 0);
 if (!io_rc) {
  dev_err(dev, "missing IO resources\n");
  return -EINVAL;
 }

 if (!devm_request_region(dev, io_rc->start, resource_size(io_rc),
     KBUILD_MODNAME)) {
  dev_err(dev, "failed to get IO region\n");
  return -EBUSY;
 }

 wdt->io_base = io_rc->start;
 wdd = &wdt->wdd;
 wdd->info = &nic7018_wdd_info;
 wdd->ops = &nic7018_wdd_ops;
 wdd->min_timeout = WDT_MIN_TIMEOUT;
 wdd->max_timeout = WDT_MAX_TIMEOUT;
 wdd->timeout = WDT_DEFAULT_TIMEOUT;
 wdd->parent = dev;

 watchdog_set_drvdata(wdd, wdt);
 watchdog_set_nowayout(wdd, nowayout);
 watchdog_init_timeout(wdd, timeout, dev);


 outb(UNLOCK, wdt->io_base + WDT_REG_LOCK);

 ret = watchdog_register_device(wdd);
 if (ret) {
  outb(LOCK, wdt->io_base + WDT_REG_LOCK);
  return ret;
 }

 dev_dbg(dev, "io_base=0x%04X, timeout=%d, nowayout=%d\n",
  wdt->io_base, timeout, nowayout);
 return 0;
}
