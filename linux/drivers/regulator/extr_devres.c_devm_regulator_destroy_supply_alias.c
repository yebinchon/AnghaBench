
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_supply_alias_match {int id; int dev; } ;
struct device {int dummy; } ;


 int regulator_unregister_supply_alias (int ,int ) ;

__attribute__((used)) static void devm_regulator_destroy_supply_alias(struct device *dev, void *res)
{
 struct regulator_supply_alias_match *match = res;

 regulator_unregister_supply_alias(match->dev, match->id);
}
