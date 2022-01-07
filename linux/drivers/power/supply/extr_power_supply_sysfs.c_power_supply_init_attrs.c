
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_type {int groups; } ;
struct TYPE_3__ {int attr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ** __power_supply_attrs ;
 int power_supply_attr_groups ;
 TYPE_1__* power_supply_attrs ;

void power_supply_init_attrs(struct device_type *dev_type)
{
 int i;

 dev_type->groups = power_supply_attr_groups;

 for (i = 0; i < ARRAY_SIZE(power_supply_attrs); i++)
  __power_supply_attrs[i] = &power_supply_attrs[i].attr;
}
