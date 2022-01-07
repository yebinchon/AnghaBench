
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int devm_regulator_unregister_supply_alias (struct device*,char const* const) ;

void devm_regulator_bulk_unregister_supply_alias(struct device *dev,
       const char *const *id,
       int num_id)
{
 int i;

 for (i = 0; i < num_id; ++i)
  devm_regulator_unregister_supply_alias(dev, id[i]);
}
