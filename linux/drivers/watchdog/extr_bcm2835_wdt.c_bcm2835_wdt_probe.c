
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct bcm2835_wdt {int base; int lock; } ;
struct bcm2835_pm {int base; } ;
struct TYPE_8__ {int status; struct device* parent; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int WDOG_HW_RUNNING ;
 int * bcm2835_power_off ;
 struct bcm2835_wdt* bcm2835_power_off_wdt ;
 scalar_t__ bcm2835_wdt_is_running (struct bcm2835_wdt*) ;
 TYPE_1__ bcm2835_wdt_wdd ;
 struct bcm2835_pm* dev_get_drvdata (int ) ;
 int dev_info (struct device*,char*) ;
 struct bcm2835_wdt* devm_kzalloc (struct device*,int,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int heartbeat ;
 int nowayout ;
 int * pm_power_off ;
 int set_bit (int ,int *) ;
 int spin_lock_init (int *) ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct bcm2835_wdt*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 int watchdog_set_restart_priority (TYPE_1__*,int) ;
 int watchdog_stop_on_reboot (TYPE_1__*) ;

__attribute__((used)) static int bcm2835_wdt_probe(struct platform_device *pdev)
{
 struct bcm2835_pm *pm = dev_get_drvdata(pdev->dev.parent);
 struct device *dev = &pdev->dev;
 struct bcm2835_wdt *wdt;
 int err;

 wdt = devm_kzalloc(dev, sizeof(struct bcm2835_wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 spin_lock_init(&wdt->lock);

 wdt->base = pm->base;

 watchdog_set_drvdata(&bcm2835_wdt_wdd, wdt);
 watchdog_init_timeout(&bcm2835_wdt_wdd, heartbeat, dev);
 watchdog_set_nowayout(&bcm2835_wdt_wdd, nowayout);
 bcm2835_wdt_wdd.parent = dev;
 if (bcm2835_wdt_is_running(wdt)) {
  set_bit(WDOG_HW_RUNNING, &bcm2835_wdt_wdd.status);
 }

 watchdog_set_restart_priority(&bcm2835_wdt_wdd, 128);

 watchdog_stop_on_reboot(&bcm2835_wdt_wdd);
 err = devm_watchdog_register_device(dev, &bcm2835_wdt_wdd);
 if (err)
  return err;

 if (pm_power_off == ((void*)0)) {
  pm_power_off = bcm2835_power_off;
  bcm2835_power_off_wdt = wdt;
 }

 dev_info(dev, "Broadcom BCM2835 watchdog timer");
 return 0;
}
