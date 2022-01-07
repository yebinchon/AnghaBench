
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int min_timeout; int max_timeout; int max_hw_heartbeat_ms; int timeout; int status; int * ops; int * info; } ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct max77620_wdt {struct device* dev; int rmap; struct watchdog_device wdt_dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX77620_ONOFFCNFG2_WD_RST_WK ;
 int MAX77620_REG_CNFGGLBL2 ;
 int MAX77620_REG_ONOFFCNFG2 ;



 unsigned int MAX77620_TWD_MASK ;
 unsigned int MAX77620_WDTEN ;
 int MAX77620_WDTOFFC ;
 int MAX77620_WDTSLPC ;
 int WDOG_HW_RUNNING ;
 int dev_err (struct device*,char*,...) ;
 int dev_get_regmap (int ,int *) ;
 struct max77620_wdt* devm_kzalloc (struct device*,int,int ) ;
 int devm_watchdog_register_device (struct device*,struct watchdog_device*) ;
 int max77620_wdt_info ;
 int max77620_wdt_ops ;
 int nowayout ;
 int platform_set_drvdata (struct platform_device*,struct max77620_wdt*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int set_bit (int ,int *) ;
 int watchdog_set_drvdata (struct watchdog_device*,struct max77620_wdt*) ;
 int watchdog_set_nowayout (struct watchdog_device*,int ) ;
 int watchdog_stop_on_unregister (struct watchdog_device*) ;

__attribute__((used)) static int max77620_wdt_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct max77620_wdt *wdt;
 struct watchdog_device *wdt_dev;
 unsigned int regval;
 int ret;

 wdt = devm_kzalloc(dev, sizeof(*wdt), GFP_KERNEL);
 if (!wdt)
  return -ENOMEM;

 wdt->dev = dev;
 wdt->rmap = dev_get_regmap(dev->parent, ((void*)0));
 if (!wdt->rmap) {
  dev_err(wdt->dev, "Failed to get parent regmap\n");
  return -ENODEV;
 }

 wdt_dev = &wdt->wdt_dev;
 wdt_dev->info = &max77620_wdt_info;
 wdt_dev->ops = &max77620_wdt_ops;
 wdt_dev->min_timeout = 2;
 wdt_dev->max_timeout = 128;
 wdt_dev->max_hw_heartbeat_ms = 128 * 1000;

 platform_set_drvdata(pdev, wdt);


 ret = regmap_update_bits(wdt->rmap, MAX77620_REG_ONOFFCNFG2,
     MAX77620_ONOFFCNFG2_WD_RST_WK,
     MAX77620_ONOFFCNFG2_WD_RST_WK);
 if (ret < 0) {
  dev_err(wdt->dev, "Failed to set WD_RST_WK: %d\n", ret);
  return ret;
 }


 ret = regmap_update_bits(wdt->rmap, MAX77620_REG_CNFGGLBL2,
     MAX77620_WDTOFFC | MAX77620_WDTSLPC,
     MAX77620_WDTOFFC | MAX77620_WDTSLPC);
 if (ret < 0) {
  dev_err(wdt->dev, "Failed to set WDT OFF mode: %d\n", ret);
  return ret;
 }


 ret = regmap_read(wdt->rmap, MAX77620_REG_CNFGGLBL2, &regval);
 if (ret < 0) {
  dev_err(wdt->dev, "Failed to read WDT CFG register: %d\n", ret);
  return ret;
 }

 switch (regval & MAX77620_TWD_MASK) {
 case 129:
  wdt_dev->timeout = 2;
  break;
 case 130:
  wdt_dev->timeout = 16;
  break;
 case 128:
  wdt_dev->timeout = 64;
  break;
 default:
  wdt_dev->timeout = 128;
  break;
 }

 if (regval & MAX77620_WDTEN)
  set_bit(WDOG_HW_RUNNING, &wdt_dev->status);

 watchdog_set_nowayout(wdt_dev, nowayout);
 watchdog_set_drvdata(wdt_dev, wdt);

 watchdog_stop_on_unregister(wdt_dev);
 return devm_watchdog_register_device(dev, wdt_dev);
}
