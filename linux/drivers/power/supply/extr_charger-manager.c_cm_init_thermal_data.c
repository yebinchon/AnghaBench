
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct power_supply {int dummy; } ;
struct TYPE_2__ {size_t num_properties; int * properties; } ;
struct charger_manager {struct charger_desc* desc; TYPE_1__ charger_psy_desc; int tzd_batt; } ;
struct charger_desc {int measure_battery_temp; scalar_t__ temp_diff; scalar_t__ temp_max; scalar_t__ thermal_zone; } ;


 scalar_t__ CM_DEFAULT_CHARGE_TEMP_MAX ;
 scalar_t__ CM_DEFAULT_RECHARGE_TEMP_DIFF ;
 scalar_t__ IS_ERR (int ) ;
 int POWER_SUPPLY_PROP_TEMP ;
 int POWER_SUPPLY_PROP_TEMP_AMBIENT ;
 int PTR_ERR (int ) ;
 int power_supply_get_property (struct power_supply*,int ,union power_supply_propval*) ;
 int thermal_zone_get_zone_by_name (scalar_t__) ;

__attribute__((used)) static int cm_init_thermal_data(struct charger_manager *cm,
  struct power_supply *fuel_gauge)
{
 struct charger_desc *desc = cm->desc;
 union power_supply_propval val;
 int ret;


 ret = power_supply_get_property(fuel_gauge,
     POWER_SUPPLY_PROP_TEMP, &val);

 if (!ret) {
  cm->charger_psy_desc.properties[cm->charger_psy_desc.num_properties] =
    POWER_SUPPLY_PROP_TEMP;
  cm->charger_psy_desc.num_properties++;
  cm->desc->measure_battery_temp = 1;
 }
 if (cm->desc->measure_battery_temp) {

  if (!desc->temp_max)
   desc->temp_max = CM_DEFAULT_CHARGE_TEMP_MAX;
  if (!desc->temp_diff)
   desc->temp_diff = CM_DEFAULT_RECHARGE_TEMP_DIFF;
 }

 return ret;
}
