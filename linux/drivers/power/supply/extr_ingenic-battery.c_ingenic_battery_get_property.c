
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply_battery_info {int voltage_min_design_uv; int voltage_max_design_uv; } ;
struct power_supply {int dummy; } ;
struct ingenic_battery {int channel; struct power_supply_battery_info info; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int POWER_SUPPLY_HEALTH_DEAD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERVOLTAGE ;




 int iio_read_channel_processed (int ,int*) ;
 struct ingenic_battery* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int ingenic_battery_get_property(struct power_supply *psy,
     enum power_supply_property psp,
     union power_supply_propval *val)
{
 struct ingenic_battery *bat = power_supply_get_drvdata(psy);
 struct power_supply_battery_info *info = &bat->info;
 int ret;

 switch (psp) {
 case 131:
  ret = iio_read_channel_processed(bat->channel, &val->intval);
  val->intval *= 1000;
  if (val->intval < info->voltage_min_design_uv)
   val->intval = POWER_SUPPLY_HEALTH_DEAD;
  else if (val->intval > info->voltage_max_design_uv)
   val->intval = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
  else
   val->intval = POWER_SUPPLY_HEALTH_GOOD;
  return ret;
 case 128:
  ret = iio_read_channel_processed(bat->channel, &val->intval);
  val->intval *= 1000;
  return ret;
 case 129:
  val->intval = info->voltage_min_design_uv;
  return 0;
 case 130:
  val->intval = info->voltage_max_design_uv;
  return 0;
 default:
  return -EINVAL;
 };
}
