
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply_info {int use_for_apm; int name; } ;
struct power_supply_desc {int num_properties; int properties; int get_property; int type; int use_for_apm; int name; } ;
struct da9030_charger {struct power_supply_info* battery_info; struct power_supply_desc psy_desc; } ;


 int ARRAY_SIZE (int ) ;
 int POWER_SUPPLY_TYPE_BATTERY ;
 int da9030_battery_get_property ;
 int da9030_battery_props ;

__attribute__((used)) static void da9030_battery_setup_psy(struct da9030_charger *charger)
{
 struct power_supply_desc *psy_desc = &charger->psy_desc;
 struct power_supply_info *info = charger->battery_info;

 psy_desc->name = info->name;
 psy_desc->use_for_apm = info->use_for_apm;
 psy_desc->type = POWER_SUPPLY_TYPE_BATTERY;
 psy_desc->get_property = da9030_battery_get_property;

 psy_desc->properties = da9030_battery_props;
 psy_desc->num_properties = ARRAY_SIZE(da9030_battery_props);
}
