
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct gb_power_supply_prop {int val; } ;
struct gb_power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 struct gb_power_supply_prop* get_psy_prop (struct gb_power_supply*,int) ;

__attribute__((used)) static int __gb_power_supply_property_get(struct gb_power_supply *gbpsy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct gb_power_supply_prop *prop;

 prop = get_psy_prop(gbpsy, psp);
 if (!prop)
  return -EINVAL;

 val->intval = prop->val;
 return 0;
}
