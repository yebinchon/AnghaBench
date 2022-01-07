
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; int member_0; } ;
struct power_supply {TYPE_1__* desc; } ;
struct TYPE_2__ {int (* set_property ) (struct power_supply*,int ,union power_supply_propval*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT ;
 int __power_supply_get_supplier_max_current ;
 int class_for_each_device (int ,int *,struct power_supply*,int ) ;
 int power_supply_class ;
 int stub1 (struct power_supply*,int ,union power_supply_propval*) ;

int power_supply_set_input_current_limit_from_supplier(struct power_supply *psy)
{
 union power_supply_propval val = {0,};
 int curr;

 if (!psy->desc->set_property)
  return -EINVAL;






 curr = class_for_each_device(power_supply_class, ((void*)0), psy,
          __power_supply_get_supplier_max_current);
 if (curr <= 0)
  return (curr == 0) ? -ENODEV : curr;

 val.intval = curr;

 return psy->desc->set_property(psy,
    POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT, &val);
}
