
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_config {struct max77650_charger_data* drv_data; int of_node; } ;
struct power_supply {int dummy; } ;
struct device {int of_node; struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct max77650_charger_data {struct device* dev; int map; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (struct power_supply*) ;
 int PTR_ERR (struct power_supply*) ;
 int dev_get_regmap (struct device*,int *) ;
 struct max77650_charger_data* devm_kzalloc (struct device*,int,int ) ;
 struct power_supply* devm_power_supply_register (struct device*,int *,struct power_supply_config*) ;
 int devm_request_any_context_irq (struct device*,int,int ,int ,char*,struct max77650_charger_data*) ;
 int max77650_battery_desc ;
 int max77650_charger_check_status ;
 int max77650_charger_enable (struct max77650_charger_data*) ;
 int max77650_charger_set_ichgin_lim (struct max77650_charger_data*,unsigned int) ;
 int max77650_charger_set_vchgin_min (struct max77650_charger_data*,unsigned int) ;
 int of_property_read_u32 (int ,char*,unsigned int*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct max77650_charger_data*) ;

__attribute__((used)) static int max77650_charger_probe(struct platform_device *pdev)
{
 struct power_supply_config pscfg = {};
 struct max77650_charger_data *chg;
 struct power_supply *battery;
 struct device *dev, *parent;
 int rv, chg_irq, chgin_irq;
 unsigned int prop;

 dev = &pdev->dev;
 parent = dev->parent;

 chg = devm_kzalloc(dev, sizeof(*chg), GFP_KERNEL);
 if (!chg)
  return -ENOMEM;

 platform_set_drvdata(pdev, chg);

 chg->map = dev_get_regmap(parent, ((void*)0));
 if (!chg->map)
  return -ENODEV;

 chg->dev = dev;

 pscfg.of_node = dev->of_node;
 pscfg.drv_data = chg;

 chg_irq = platform_get_irq_byname(pdev, "CHG");
 if (chg_irq < 0)
  return chg_irq;

 chgin_irq = platform_get_irq_byname(pdev, "CHGIN");
 if (chgin_irq < 0)
  return chgin_irq;

 rv = devm_request_any_context_irq(dev, chg_irq,
       max77650_charger_check_status,
       IRQF_ONESHOT, "chg", chg);
 if (rv < 0)
  return rv;

 rv = devm_request_any_context_irq(dev, chgin_irq,
       max77650_charger_check_status,
       IRQF_ONESHOT, "chgin", chg);
 if (rv < 0)
  return rv;

 battery = devm_power_supply_register(dev,
          &max77650_battery_desc, &pscfg);
 if (IS_ERR(battery))
  return PTR_ERR(battery);

 rv = of_property_read_u32(dev->of_node,
      "input-voltage-min-microvolt", &prop);
 if (rv == 0) {
  rv = max77650_charger_set_vchgin_min(chg, prop);
  if (rv)
   return rv;
 }

 rv = of_property_read_u32(dev->of_node,
      "input-current-limit-microamp", &prop);
 if (rv == 0) {
  rv = max77650_charger_set_ichgin_lim(chg, prop);
  if (rv)
   return rv;
 }

 return max77650_charger_enable(chg);
}
