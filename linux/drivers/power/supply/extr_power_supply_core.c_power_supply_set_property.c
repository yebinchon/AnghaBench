
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct power_supply {TYPE_1__* desc; int use_cnt; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int (* set_property ) (struct power_supply*,int,union power_supply_propval const*) ;} ;


 int ENODEV ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct power_supply*,int,union power_supply_propval const*) ;

int power_supply_set_property(struct power_supply *psy,
       enum power_supply_property psp,
       const union power_supply_propval *val)
{
 if (atomic_read(&psy->use_cnt) <= 0 || !psy->desc->set_property)
  return -ENODEV;

 return psy->desc->set_property(psy, psp, val);
}
