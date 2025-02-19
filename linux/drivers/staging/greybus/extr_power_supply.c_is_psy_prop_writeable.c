
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply_prop {scalar_t__ is_writeable; } ;
struct gb_power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int ENOENT ;
 struct gb_power_supply_prop* get_psy_prop (struct gb_power_supply*,int) ;

__attribute__((used)) static int is_psy_prop_writeable(struct gb_power_supply *gbpsy,
         enum power_supply_property psp)
{
 struct gb_power_supply_prop *prop;

 prop = get_psy_prop(gbpsy, psp);
 if (!prop)
  return -ENOENT;
 return prop->is_writeable ? 1 : 0;
}
