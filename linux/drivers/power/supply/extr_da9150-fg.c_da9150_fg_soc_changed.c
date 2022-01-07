
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {scalar_t__ intval; } ;
struct da9150_fg {scalar_t__ soc; } ;


 int da9150_fg_capacity (struct da9150_fg*,union power_supply_propval*) ;

__attribute__((used)) static bool da9150_fg_soc_changed(struct da9150_fg *fg)
{
 union power_supply_propval val;

 da9150_fg_capacity(fg, &val);
 if (val.intval != fg->soc) {
  fg->soc = val.intval;
  return 1;
 }

 return 0;
}
