
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; int strval; } ;
struct TYPE_2__ {int parent; } ;
struct power_supply {TYPE_1__ dev; } ;
struct nvec_power {int bat_type_enum; int bat_model; int bat_manu; int bat_temperature; int capacity_remain; int critical_capacity; int charge_last_full; int charge_full_design; int time_remain; int bat_current_avg; int bat_current_now; int bat_voltage_now; int bat_present; int bat_cap; int bat_status; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 struct nvec_power* dev_get_drvdata (int ) ;

__attribute__((used)) static int nvec_battery_get_property(struct power_supply *psy,
         enum power_supply_property psp,
         union power_supply_propval *val)
{
 struct nvec_power *power = dev_get_drvdata(psy->dev.parent);

 switch (psp) {
 case 132:
  val->intval = power->bat_status;
  break;
 case 142:
  val->intval = power->bat_cap;
  break;
 case 133:
  val->intval = power->bat_present;
  break;
 case 128:
  val->intval = power->bat_voltage_now;
  break;
 case 136:
  val->intval = power->bat_current_now;
  break;
 case 137:
  val->intval = power->bat_current_avg;
  break;
 case 129:
  val->intval = power->time_remain;
  break;
 case 139:
  val->intval = power->charge_full_design;
  break;
 case 140:
  val->intval = power->charge_last_full;
  break;
 case 141:
  val->intval = power->critical_capacity;
  break;
 case 138:
  val->intval = power->capacity_remain;
  break;
 case 130:
  val->intval = power->bat_temperature;
  break;
 case 135:
  val->strval = power->bat_manu;
  break;
 case 134:
  val->strval = power->bat_model;
  break;
 case 131:
  val->intval = power->bat_type_enum;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
