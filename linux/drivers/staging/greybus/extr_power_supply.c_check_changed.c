
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_power_supply_prop {int val; int previous_val; scalar_t__ prop; } ;
struct gb_power_supply_changes {scalar_t__ prop; int tolerance_change; int (* prop_changed ) (struct gb_power_supply*,struct gb_power_supply_prop*) ;} ;
struct gb_power_supply {int changed; } ;


 int ARRAY_SIZE (struct gb_power_supply_changes*) ;
 struct gb_power_supply_changes* psy_props_changes ;
 int stub1 (struct gb_power_supply*,struct gb_power_supply_prop*) ;

__attribute__((used)) static void check_changed(struct gb_power_supply *gbpsy,
     struct gb_power_supply_prop *prop)
{
 const struct gb_power_supply_changes *psyc;
 int val = prop->val;
 int prev_val = prop->previous_val;
 bool changed = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(psy_props_changes); i++) {
  psyc = &psy_props_changes[i];
  if (prop->prop == psyc->prop) {
   if (!psyc->tolerance_change)
    changed = 1;
   else if (val < prev_val &&
     prev_val - val > psyc->tolerance_change)
    changed = 1;
   else if (val > prev_val &&
     val - prev_val > psyc->tolerance_change)
    changed = 1;

   if (changed && psyc->prop_changed)
    psyc->prop_changed(gbpsy, prop);

   if (changed)
    gbpsy->changed = 1;
   break;
  }
 }
}
