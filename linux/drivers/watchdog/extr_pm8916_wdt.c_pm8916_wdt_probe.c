
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pretimeout; int timeout; int max_timeout; int min_timeout; struct device* parent; int * ops; int * info; } ;
struct pm8916_wdt {TYPE_1__ wdev; scalar_t__ baseaddr; int regmap; } ;
struct device {struct device* parent; } ;
struct platform_device {struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int PM8916_WDT_DEFAULT_TIMEOUT ;
 int PM8916_WDT_MAX_TIMEOUT ;
 int PM8916_WDT_MIN_TIMEOUT ;
 scalar_t__ PON_PMIC_WD_RESET_S2_CTL ;
 int RESET_TYPE_HARD ;
 int dev_err (struct device*,char*) ;
 int dev_get_regmap (struct device*,int *) ;
 int device_property_read_u32 (struct device*,char*,scalar_t__*) ;
 struct pm8916_wdt* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int,int ,int ,char*,struct pm8916_wdt*) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int pm8916_wdt_configure_timers (TYPE_1__*) ;
 int pm8916_wdt_ident ;
 int pm8916_wdt_isr ;
 int pm8916_wdt_ops ;
 int pm8916_wdt_pt_ident ;
 int regmap_write (int ,scalar_t__,int ) ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct pm8916_wdt*) ;

__attribute__((used)) static int pm8916_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct pm8916_wdt *wdt;
 struct device *parent;
 int err, irq;

 wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 parent = dev->parent;







 wdt->regmap = dev_get_regmap(parent->parent, ((void*)0));
 if (!wdt->regmap) {
  dev_err(dev, "failed to locate regmap\n");
  return -ENODEV;
 }

 err = device_property_read_u32(parent, "reg", &wdt->baseaddr);
 if (err) {
  dev_err(dev, "failed to get pm8916-pon address\n");
  return err;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq > 0) {
  err = devm_request_irq(dev, irq, pm8916_wdt_isr, 0,
           "pm8916_wdt", wdt);
  if (err)
   return err;

  wdt->wdev.info = &pm8916_wdt_pt_ident;
 } else {
  if (irq == -EPROBE_DEFER)
   return -EPROBE_DEFER;

  wdt->wdev.info = &pm8916_wdt_ident;
 }


 err = regmap_write(wdt->regmap,
      wdt->baseaddr + PON_PMIC_WD_RESET_S2_CTL,
      RESET_TYPE_HARD);
 if (err) {
  dev_err(dev, "failed configure watchdog\n");
  return err;
 }

 wdt->wdev.ops = &pm8916_wdt_ops,
 wdt->wdev.parent = dev;
 wdt->wdev.min_timeout = PM8916_WDT_MIN_TIMEOUT;
 wdt->wdev.max_timeout = PM8916_WDT_MAX_TIMEOUT;
 wdt->wdev.timeout = PM8916_WDT_DEFAULT_TIMEOUT;
 wdt->wdev.pretimeout = 0;
 watchdog_set_drvdata(&wdt->wdev, wdt);

 watchdog_init_timeout(&wdt->wdev, 0, dev);
 pm8916_wdt_configure_timers(&wdt->wdev);

 return devm_watchdog_register_device(dev, &wdt->wdev);
}
