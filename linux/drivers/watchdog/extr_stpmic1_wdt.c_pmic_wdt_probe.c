
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int timeout; struct device* parent; int max_timeout; int min_timeout; int * ops; int * info; } ;
struct stpmic1_wdt {struct stpmic1* pmic; TYPE_1__ wdtdev; } ;
struct stpmic1 {int dev; } ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PMIC_WDT_DEFAULT_TIMEOUT ;
 int PMIC_WDT_MAX_TIMEOUT ;
 int PMIC_WDT_MIN_TIMEOUT ;
 int dev_dbg (int ,char*) ;
 struct stpmic1* dev_get_drvdata (int ) ;
 struct stpmic1_wdt* devm_kzalloc (struct device*,int,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int nowayout ;
 int pmic_watchdog_info ;
 int pmic_watchdog_ops ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct stpmic1_wdt*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;

__attribute__((used)) static int pmic_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 int ret;
 struct stpmic1 *pmic;
 struct stpmic1_wdt *wdt;

 if (!dev->parent)
  return -EINVAL;

 pmic = dev_get_drvdata(dev->parent);
 if (!pmic)
  return -EINVAL;

 wdt = devm_kzalloc(dev, sizeof(struct stpmic1_wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 wdt->pmic = pmic;

 wdt->wdtdev.info = &pmic_watchdog_info;
 wdt->wdtdev.ops = &pmic_watchdog_ops;
 wdt->wdtdev.min_timeout = PMIC_WDT_MIN_TIMEOUT;
 wdt->wdtdev.max_timeout = PMIC_WDT_MAX_TIMEOUT;
 wdt->wdtdev.parent = dev;

 wdt->wdtdev.timeout = PMIC_WDT_DEFAULT_TIMEOUT;
 watchdog_init_timeout(&wdt->wdtdev, 0, dev);

 watchdog_set_nowayout(&wdt->wdtdev, nowayout);
 watchdog_set_drvdata(&wdt->wdtdev, wdt);

 ret = devm_watchdog_register_device(dev, &wdt->wdtdev);
 if (ret)
  return ret;

 dev_dbg(wdt->pmic->dev, "PMIC Watchdog driver probed\n");
 return 0;
}
