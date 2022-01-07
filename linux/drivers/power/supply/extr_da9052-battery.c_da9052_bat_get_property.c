
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct da9052_battery {int da9052; int charger_type; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int DA9052_BAT_CUTOFF_VOLT ;
 int DA9052_NOCHARGER ;
 int EINVAL ;
 int ENODEV ;
 int POWER_SUPPLY_TECHNOLOGY_LION ;
 int da9052_adc_read_temp (int ) ;
 int da9052_bat_check_health (struct da9052_battery*,int*) ;
 int da9052_bat_check_presence (struct da9052_battery*,int*) ;
 int da9052_bat_check_status (struct da9052_battery*,int*) ;
 int da9052_bat_read_capacity (struct da9052_battery*,int*) ;
 int da9052_bat_read_volt (struct da9052_battery*,int*) ;
 int da9052_read_chg_current (struct da9052_battery*,int*) ;
 struct da9052_battery* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int da9052_bat_get_property(struct power_supply *psy,
        enum power_supply_property psp,
        union power_supply_propval *val)
{
 int ret;
 int illegal;
 struct da9052_battery *bat = power_supply_get_drvdata(psy);

 ret = da9052_bat_check_presence(bat, &illegal);
 if (ret < 0)
  return ret;

 if (illegal && psp != 133)
  return -ENODEV;

 switch (psp) {
 case 132:
  ret = da9052_bat_check_status(bat, &val->intval);
  break;
 case 134:
  val->intval =
   (bat->charger_type == DA9052_NOCHARGER) ? 0 : 1;
  break;
 case 133:
  ret = da9052_bat_check_presence(bat, &val->intval);
  break;
 case 135:
  ret = da9052_bat_check_health(bat, &val->intval);
  break;
 case 128:
  val->intval = DA9052_BAT_CUTOFF_VOLT * 1000;
  break;
 case 129:
  ret = da9052_bat_read_volt(bat, &val->intval);
  break;
 case 136:
  ret = da9052_read_chg_current(bat, &val->intval);
  break;
 case 137:
  ret = da9052_bat_read_capacity(bat, &val->intval);
  break;
 case 130:
  val->intval = da9052_adc_read_temp(bat->da9052);
  ret = val->intval;
  break;
 case 131:
  val->intval = POWER_SUPPLY_TECHNOLOGY_LION;
  break;
 default:
  return -EINVAL;
 }
 return ret;
}
