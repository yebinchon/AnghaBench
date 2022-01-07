
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct collie_bat {int (* is_present ) (struct collie_bat*) ;int status; int technology; int full_chrg; int bat_max; int bat_min; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int ENODEV ;
 int collie_read_bat (struct collie_bat*) ;
 int collie_read_temp (struct collie_bat*) ;
 struct collie_bat* power_supply_get_drvdata (struct power_supply*) ;
 int stub1 (struct collie_bat*) ;
 int stub2 (struct collie_bat*) ;

__attribute__((used)) static int collie_bat_get_property(struct power_supply *psy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 int ret = 0;
 struct collie_bat *bat = power_supply_get_drvdata(psy);

 if (bat->is_present && !bat->is_present(bat)
   && psp != 135) {
  return -ENODEV;
 }

 switch (psp) {
 case 134:
  val->intval = bat->status;
  break;
 case 133:
  val->intval = bat->technology;
  break;
 case 128:
  val->intval = collie_read_bat(bat);
  break;
 case 131:
  if (bat->full_chrg == -1)
   val->intval = bat->bat_max;
  else
   val->intval = bat->full_chrg;
  break;
 case 130:
  val->intval = bat->bat_max;
  break;
 case 129:
  val->intval = bat->bat_min;
  break;
 case 132:
  val->intval = collie_read_temp(bat);
  break;
 case 135:
  val->intval = bat->is_present ? bat->is_present(bat) : 1;
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}
