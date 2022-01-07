
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union power_supply_propval {int dummy; } power_supply_propval ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct lp8788_charger {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 struct lp8788_charger* dev_get_drvdata (int ) ;
 int lp8788_get_battery_capacity (struct lp8788_charger*,union power_supply_propval*) ;
 int lp8788_get_battery_charging_current (struct lp8788_charger*,union power_supply_propval*) ;
 int lp8788_get_battery_health (struct lp8788_charger*,union power_supply_propval*) ;
 int lp8788_get_battery_present (struct lp8788_charger*,union power_supply_propval*) ;
 int lp8788_get_battery_status (struct lp8788_charger*,union power_supply_propval*) ;
 int lp8788_get_battery_temperature (struct lp8788_charger*,union power_supply_propval*) ;
 int lp8788_get_battery_voltage (struct lp8788_charger*,union power_supply_propval*) ;
 int lp8788_get_charging_termination_voltage (struct lp8788_charger*,union power_supply_propval*) ;

__attribute__((used)) static int lp8788_battery_get_property(struct power_supply *psy,
     enum power_supply_property psp,
     union power_supply_propval *val)
{
 struct lp8788_charger *pchg = dev_get_drvdata(psy->dev.parent);

 switch (psp) {
 case 130:
  return lp8788_get_battery_status(pchg, val);
 case 132:
  return lp8788_get_battery_health(pchg, val);
 case 131:
  return lp8788_get_battery_present(pchg, val);
 case 128:
  return lp8788_get_battery_voltage(pchg, val);
 case 135:
  return lp8788_get_battery_capacity(pchg, val);
 case 129:
  return lp8788_get_battery_temperature(pchg, val);
 case 134:
  return lp8788_get_battery_charging_current(pchg, val);
 case 133:
  return lp8788_get_charging_termination_voltage(pchg, val);
 default:
  return -EINVAL;
 }
}
