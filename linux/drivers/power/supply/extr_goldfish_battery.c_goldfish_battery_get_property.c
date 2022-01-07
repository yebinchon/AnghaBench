
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {void* intval; } ;
struct power_supply {int dummy; } ;
struct goldfish_battery_data {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int BATTERY_CAPACITY ;
 int BATTERY_CHARGE_COUNTER ;
 int BATTERY_CHARGE_FULL_UAH ;
 int BATTERY_CURRENT_AVG ;
 int BATTERY_CURRENT_NOW ;
 int BATTERY_CYCLE_COUNT ;
 int BATTERY_HEALTH ;
 int BATTERY_PRESENT ;
 int BATTERY_STATUS ;
 int BATTERY_TEMP ;
 int BATTERY_VOLTAGE ;
 int EINVAL ;
 void* GOLDFISH_BATTERY_READ (struct goldfish_battery_data*,int ) ;
 void* POWER_SUPPLY_TECHNOLOGY_LION ;
 struct goldfish_battery_data* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int goldfish_battery_get_property(struct power_supply *psy,
     enum power_supply_property psp,
     union power_supply_propval *val)
{
 struct goldfish_battery_data *data = power_supply_get_drvdata(psy);
 int ret = 0;

 switch (psp) {
 case 131:
  val->intval = GOLDFISH_BATTERY_READ(data, BATTERY_STATUS);
  break;
 case 133:
  val->intval = GOLDFISH_BATTERY_READ(data, BATTERY_HEALTH);
  break;
 case 132:
  val->intval = GOLDFISH_BATTERY_READ(data, BATTERY_PRESENT);
  break;
 case 130:
  val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
  break;
 case 139:
  val->intval = GOLDFISH_BATTERY_READ(data, BATTERY_CAPACITY);
  break;
 case 128:
  val->intval = GOLDFISH_BATTERY_READ(data, BATTERY_VOLTAGE);
  break;
 case 129:
  val->intval = GOLDFISH_BATTERY_READ(data, BATTERY_TEMP);
  break;
 case 138:
  val->intval = GOLDFISH_BATTERY_READ(data,
          BATTERY_CHARGE_COUNTER);
  break;
 case 135:
  val->intval = GOLDFISH_BATTERY_READ(data, BATTERY_CURRENT_NOW);
  break;
 case 136:
  val->intval = GOLDFISH_BATTERY_READ(data, BATTERY_CURRENT_AVG);
  break;
 case 137:
  val->intval = GOLDFISH_BATTERY_READ(data,
          BATTERY_CHARGE_FULL_UAH);
  break;
 case 134:
  val->intval = GOLDFISH_BATTERY_READ(data, BATTERY_CYCLE_COUNT);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
