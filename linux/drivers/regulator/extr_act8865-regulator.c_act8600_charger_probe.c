
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct power_supply_config {int of_node; struct regmap* drv_data; } ;
struct power_supply {int dummy; } ;
struct device {int of_node; } ;


 int PTR_ERR_OR_ZERO (struct power_supply*) ;
 int act8600_charger_desc ;
 struct power_supply* devm_power_supply_register (struct device*,int *,struct power_supply_config*) ;

__attribute__((used)) static int act8600_charger_probe(struct device *dev, struct regmap *regmap)
{
 struct power_supply *charger;
 struct power_supply_config cfg = {
  .drv_data = regmap,
  .of_node = dev->of_node,
 };

 charger = devm_power_supply_register(dev, &act8600_charger_desc, &cfg);

 return PTR_ERR_OR_ZERO(charger);
}
