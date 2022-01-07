
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct da9150_charger {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int da9150_charger_battery_charge_type (struct da9150_charger*,union power_supply_propval*) ;
 int da9150_charger_battery_current_max (struct da9150_charger*,union power_supply_propval*) ;
 int da9150_charger_battery_health (struct da9150_charger*,union power_supply_propval*) ;
 int da9150_charger_battery_present (struct da9150_charger*,union power_supply_propval*) ;
 int da9150_charger_battery_status (struct da9150_charger*,union power_supply_propval*) ;
 int da9150_charger_battery_voltage_max (struct da9150_charger*,union power_supply_propval*) ;
 int da9150_charger_battery_voltage_min (struct da9150_charger*,union power_supply_propval*) ;
 int da9150_charger_battery_voltage_now (struct da9150_charger*,union power_supply_propval*) ;
 int da9150_charger_supply_online (struct da9150_charger*,struct power_supply*,union power_supply_propval*) ;
 struct da9150_charger* dev_get_drvdata (int ) ;

__attribute__((used)) static int da9150_charger_battery_get_prop(struct power_supply *psy,
        enum power_supply_property psp,
        union power_supply_propval *val)
{
 struct da9150_charger *charger = dev_get_drvdata(psy->dev.parent);
 int ret;

 switch (psp) {
 case 130:
  ret = da9150_charger_battery_status(charger, val);
  break;
 case 132:
  ret = da9150_charger_supply_online(charger, psy, val);
  break;
 case 133:
  ret = da9150_charger_battery_health(charger, val);
  break;
 case 131:
  ret = da9150_charger_battery_present(charger, val);
  break;
 case 136:
  ret = da9150_charger_battery_charge_type(charger, val);
  break;
 case 129:
  ret = da9150_charger_battery_voltage_min(charger, val);
  break;
 case 128:
  ret = da9150_charger_battery_voltage_now(charger, val);
  break;
 case 135:
  ret = da9150_charger_battery_current_max(charger, val);
  break;
 case 134:
  ret = da9150_charger_battery_voltage_max(charger, val);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
