
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply {int* props_raw; int properties_count_str; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int GFP_KERNEL ;
 int* krealloc (int*,int,int ) ;
 int total_props (struct gb_power_supply*) ;

__attribute__((used)) static void prop_append(struct gb_power_supply *gbpsy,
   enum power_supply_property prop)
{
 enum power_supply_property *new_props_raw;

 gbpsy->properties_count_str++;
 new_props_raw = krealloc(gbpsy->props_raw, total_props(gbpsy) *
     sizeof(enum power_supply_property),
     GFP_KERNEL);
 if (!new_props_raw)
  return;
 gbpsy->props_raw = new_props_raw;
 gbpsy->props_raw[total_props(gbpsy) - 1] = prop;
}
