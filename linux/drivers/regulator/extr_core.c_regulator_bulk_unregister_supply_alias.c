
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int regulator_unregister_supply_alias (struct device*,char const* const) ;

void regulator_bulk_unregister_supply_alias(struct device *dev,
         const char *const *id,
         int num_id)
{
 int i;

 for (i = 0; i < num_id; ++i)
  regulator_unregister_supply_alias(dev, id[i]);
}
