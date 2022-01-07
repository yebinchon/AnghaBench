
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct device {int dummy; } ;
struct platform_device {TYPE_1__* id_entry; struct device dev; } ;
struct TYPE_8__ {int * ops; int * info; int timeout; struct device* parent; } ;
struct max63xx_wdt {TYPE_5__* timeout; TYPE_2__ wdd; } ;
struct max63xx_timeout {int dummy; } ;
struct TYPE_9__ {int tdelay; int twd; } ;
struct TYPE_7__ {scalar_t__ driver_data; } ;


 int DEFAULT_HEARTBEAT ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_HEARTBEAT ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,int ,int ) ;
 struct max63xx_wdt* devm_kzalloc (struct device*,int,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_2__*) ;
 int heartbeat ;
 int max63xx_mmap_init (struct platform_device*,struct max63xx_wdt*) ;
 TYPE_5__* max63xx_select_timeout (struct max63xx_timeout*,int) ;
 int max63xx_wdt_info ;
 int max63xx_wdt_ops ;
 int nowayout ;
 int platform_set_drvdata (struct platform_device*,TYPE_2__*) ;
 int watchdog_set_drvdata (TYPE_2__*,struct max63xx_wdt*) ;
 int watchdog_set_nowayout (TYPE_2__*,int ) ;

__attribute__((used)) static int max63xx_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct max63xx_wdt *wdt;
 struct max63xx_timeout *table;
 int err;

 wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 table = (struct max63xx_timeout *)pdev->id_entry->driver_data;

 if (heartbeat < 1 || heartbeat > MAX_HEARTBEAT)
  heartbeat = DEFAULT_HEARTBEAT;

 wdt->timeout = max63xx_select_timeout(table, heartbeat);
 if (!wdt->timeout) {
  dev_err(dev, "unable to satisfy %ds heartbeat request\n",
   heartbeat);
  return -EINVAL;
 }

 err = max63xx_mmap_init(pdev, wdt);
 if (err)
  return err;

 platform_set_drvdata(pdev, &wdt->wdd);
 watchdog_set_drvdata(&wdt->wdd, wdt);

 wdt->wdd.parent = dev;
 wdt->wdd.timeout = wdt->timeout->twd;
 wdt->wdd.info = &max63xx_wdt_info;
 wdt->wdd.ops = &max63xx_wdt_ops;

 watchdog_set_nowayout(&wdt->wdd, nowayout);

 err = devm_watchdog_register_device(dev, &wdt->wdd);
 if (err)
  return err;

 dev_info(dev, "using %ds heartbeat with %ds initial delay\n",
   wdt->timeout->twd, wdt->timeout->tdelay);
 return 0;
}
