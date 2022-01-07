
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_supply_alias_match {char const* id; struct device* dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devm_regulator_destroy_supply_alias ;
 int devres_add (struct device*,struct regulator_supply_alias_match*) ;
 struct regulator_supply_alias_match* devres_alloc (int ,int,int ) ;
 int devres_free (struct regulator_supply_alias_match*) ;
 int regulator_register_supply_alias (struct device*,char const*,struct device*,char const*) ;

int devm_regulator_register_supply_alias(struct device *dev, const char *id,
      struct device *alias_dev,
      const char *alias_id)
{
 struct regulator_supply_alias_match *match;
 int ret;

 match = devres_alloc(devm_regulator_destroy_supply_alias,
      sizeof(struct regulator_supply_alias_match),
      GFP_KERNEL);
 if (!match)
  return -ENOMEM;

 match->dev = dev;
 match->id = id;

 ret = regulator_register_supply_alias(dev, id, alias_dev, alias_id);
 if (ret < 0) {
  devres_free(match);
  return ret;
 }

 devres_add(dev, match);

 return 0;
}
