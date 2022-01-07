
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct axp20x_ac_power {int regmap; int acin_i; int acin_v; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int AXP20X_PWR_INPUT_STATUS ;
 int AXP20X_PWR_STATUS_ACIN_AVAIL ;
 int AXP20X_PWR_STATUS_ACIN_PRESENT ;
 int AXP813_ACIN_PATH_CTRL ;
 int AXP813_CURR_LIMIT_REG_TO_UA (int) ;
 int AXP813_VHOLD_REG_TO_UV (int) ;
 int EINVAL ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_UNKNOWN ;







 int iio_read_channel_processed (int ,int*) ;
 struct axp20x_ac_power* power_supply_get_drvdata (struct power_supply*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static int axp20x_ac_power_get_property(struct power_supply *psy,
     enum power_supply_property psp,
     union power_supply_propval *val)
{
 struct axp20x_ac_power *power = power_supply_get_drvdata(psy);
 int ret, reg;

 switch (psp) {
 case 133:
  ret = regmap_read(power->regmap, AXP20X_PWR_INPUT_STATUS, &reg);
  if (ret)
   return ret;

  if (reg & AXP20X_PWR_STATUS_ACIN_PRESENT) {
   val->intval = POWER_SUPPLY_HEALTH_GOOD;
   return 0;
  }

  val->intval = POWER_SUPPLY_HEALTH_UNKNOWN;
  return 0;

 case 130:
  ret = regmap_read(power->regmap, AXP20X_PWR_INPUT_STATUS, &reg);
  if (ret)
   return ret;

  val->intval = !!(reg & AXP20X_PWR_STATUS_ACIN_PRESENT);
  return 0;

 case 131:
  ret = regmap_read(power->regmap, AXP20X_PWR_INPUT_STATUS, &reg);
  if (ret)
   return ret;

  val->intval = !!(reg & AXP20X_PWR_STATUS_ACIN_AVAIL);
  return 0;

 case 128:
  ret = iio_read_channel_processed(power->acin_v, &val->intval);
  if (ret)
   return ret;


  val->intval *= 1000;

  return 0;

 case 134:
  ret = iio_read_channel_processed(power->acin_i, &val->intval);
  if (ret)
   return ret;


  val->intval *= 1000;

  return 0;

 case 129:
  ret = regmap_read(power->regmap, AXP813_ACIN_PATH_CTRL, &reg);
  if (ret)
   return ret;

  val->intval = AXP813_VHOLD_REG_TO_UV(reg);

  return 0;

 case 132:
  ret = regmap_read(power->regmap, AXP813_ACIN_PATH_CTRL, &reg);
  if (ret)
   return ret;

  val->intval = AXP813_CURR_LIMIT_REG_TO_UA(reg);

  if (val->intval > 4000000)
   val->intval = 4000000;

  return 0;

 default:
  return -EINVAL;
 }

 return -EINVAL;
}
