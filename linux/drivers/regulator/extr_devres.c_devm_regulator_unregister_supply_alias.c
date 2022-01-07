
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_supply_alias_match {char const* id; struct device* dev; } ;
struct device {int dummy; } ;


 int WARN_ON (int) ;
 int devm_regulator_destroy_supply_alias ;
 int devm_regulator_match_supply_alias ;
 int devres_release (struct device*,int ,int ,struct regulator_supply_alias_match*) ;

void devm_regulator_unregister_supply_alias(struct device *dev, const char *id)
{
 struct regulator_supply_alias_match match;
 int rc;

 match.dev = dev;
 match.id = id;

 rc = devres_release(dev, devm_regulator_destroy_supply_alias,
       devm_regulator_match_supply_alias, &match);
 if (rc != 0)
  WARN_ON(rc);
}
