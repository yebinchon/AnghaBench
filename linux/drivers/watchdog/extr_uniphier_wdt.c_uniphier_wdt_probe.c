
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int timeout; struct device* parent; int min_timeout; int max_timeout; int * ops; int * info; } ;
struct uniphier_wdt_dev {TYPE_1__ wdt_dev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int WDTRSTSEL ;
 int WDTRSTSEL_RSTSEL_BOTH ;
 int WDT_DEFAULT_TIMEOUT ;
 int WDT_PERIOD_MAX ;
 int WDT_PERIOD_MIN ;
 int dev_info (struct device*,char*,int ,int ) ;
 struct uniphier_wdt_dev* devm_kzalloc (struct device*,int,int ) ;
 int devm_watchdog_register_device (struct device*,TYPE_1__*) ;
 int nowayout ;
 struct device_node* of_get_parent (int ) ;
 int of_node_put (struct device_node*) ;
 int regmap_write (struct regmap*,int ,int ) ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;
 int timeout ;
 int uniphier_watchdog_stop (TYPE_1__*) ;
 int uniphier_wdt_info ;
 int uniphier_wdt_ops ;
 int watchdog_init_timeout (TYPE_1__*,int ,struct device*) ;
 int watchdog_set_drvdata (TYPE_1__*,struct uniphier_wdt_dev*) ;
 int watchdog_set_nowayout (TYPE_1__*,int ) ;
 int watchdog_stop_on_reboot (TYPE_1__*) ;

__attribute__((used)) static int uniphier_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct uniphier_wdt_dev *wdev;
 struct regmap *regmap;
 struct device_node *parent;
 int ret;

 wdev = devm_kzalloc(dev, sizeof(*wdev), GFP_KERNEL);
 if (!wdev)
  return -ENOMEM;

 parent = of_get_parent(dev->of_node);
 regmap = syscon_node_to_regmap(parent);
 of_node_put(parent);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 wdev->regmap = regmap;
 wdev->wdt_dev.info = &uniphier_wdt_info;
 wdev->wdt_dev.ops = &uniphier_wdt_ops;
 wdev->wdt_dev.max_timeout = WDT_PERIOD_MAX;
 wdev->wdt_dev.min_timeout = WDT_PERIOD_MIN;
 wdev->wdt_dev.timeout = WDT_DEFAULT_TIMEOUT;
 wdev->wdt_dev.parent = dev;

 watchdog_init_timeout(&wdev->wdt_dev, timeout, dev);
 watchdog_set_nowayout(&wdev->wdt_dev, nowayout);
 watchdog_stop_on_reboot(&wdev->wdt_dev);

 watchdog_set_drvdata(&wdev->wdt_dev, wdev);

 uniphier_watchdog_stop(&wdev->wdt_dev);
 ret = regmap_write(wdev->regmap, WDTRSTSEL, WDTRSTSEL_RSTSEL_BOTH);
 if (ret)
  return ret;

 ret = devm_watchdog_register_device(dev, &wdev->wdt_dev);
 if (ret)
  return ret;

 dev_info(dev, "watchdog driver (timeout=%d sec, nowayout=%d)\n",
   wdev->wdt_dev.timeout, nowayout);

 return 0;
}
