
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply_prop {int prop; } ;
struct gb_power_supply {int properties_count; struct gb_power_supply_prop* props; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;



__attribute__((used)) static struct gb_power_supply_prop *get_psy_prop(struct gb_power_supply *gbpsy,
       enum power_supply_property psp)
{
 int i;

 for (i = 0; i < gbpsy->properties_count; i++)
  if (gbpsy->props[i].prop == psp)
   return &gbpsy->props[i];
 return ((void*)0);
}
