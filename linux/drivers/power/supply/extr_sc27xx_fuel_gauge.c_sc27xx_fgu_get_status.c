
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct sc27xx_fgu_data {int dummy; } ;
struct power_supply {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int POWER_SUPPLY_PROP_STATUS ;
 struct power_supply* power_supply_get_by_name (int ) ;
 int power_supply_get_property (struct power_supply*,int ,union power_supply_propval*) ;
 int power_supply_put (struct power_supply*) ;
 int * sc27xx_charger_supply_name ;

__attribute__((used)) static int sc27xx_fgu_get_status(struct sc27xx_fgu_data *data, int *status)
{
 union power_supply_propval val;
 struct power_supply *psy;
 int i, ret = -EINVAL;

 for (i = 0; i < ARRAY_SIZE(sc27xx_charger_supply_name); i++) {
  psy = power_supply_get_by_name(sc27xx_charger_supply_name[i]);
  if (!psy)
   continue;

  ret = power_supply_get_property(psy, POWER_SUPPLY_PROP_STATUS,
      &val);
  power_supply_put(psy);
  if (ret)
   return ret;

  *status = val.intval;
 }

 return ret;
}
