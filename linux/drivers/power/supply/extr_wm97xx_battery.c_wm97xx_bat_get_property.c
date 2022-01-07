
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct wm97xx_batt_pdata {int batt_tech; int max_voltage; int min_voltage; int temp_aux; int batt_aux; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;







 int bat_status ;
 struct wm97xx_batt_pdata* power_supply_get_drvdata (struct power_supply*) ;
 int wm97xx_read_bat (struct power_supply*) ;
 int wm97xx_read_temp (struct power_supply*) ;

__attribute__((used)) static int wm97xx_bat_get_property(struct power_supply *bat_ps,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct wm97xx_batt_pdata *pdata = power_supply_get_drvdata(bat_ps);

 switch (psp) {
 case 133:
  val->intval = bat_status;
  break;
 case 132:
  val->intval = pdata->batt_tech;
  break;
 case 128:
  if (pdata->batt_aux >= 0)
   val->intval = wm97xx_read_bat(bat_ps);
  else
   return -EINVAL;
  break;
 case 131:
  if (pdata->temp_aux >= 0)
   val->intval = wm97xx_read_temp(bat_ps);
  else
   return -EINVAL;
  break;
 case 130:
  if (pdata->max_voltage >= 0)
   val->intval = pdata->max_voltage;
  else
   return -EINVAL;
  break;
 case 129:
  if (pdata->min_voltage >= 0)
   val->intval = pdata->min_voltage;
  else
   return -EINVAL;
  break;
 case 134:
  val->intval = 1;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
