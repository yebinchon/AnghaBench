
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct iio_channel {int dummy; } ;
struct axp20x_batt_ps {int max_ccc; struct iio_channel* batt_v; int regmap; TYPE_1__* data; struct iio_channel* batt_dischrg_i; struct iio_channel* batt_chrg_i; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {int (* get_max_voltage ) (struct axp20x_batt_ps*,int*) ;int has_fg_valid; } ;


 int AXP209_FG_PERCENT ;
 int AXP20X_FG_RES ;
 int AXP20X_PWR_INPUT_STATUS ;
 int AXP20X_PWR_OP_BATT_ACTIVATED ;
 int AXP20X_PWR_OP_BATT_PRESENT ;
 int AXP20X_PWR_OP_MODE ;
 int AXP20X_PWR_STATUS_BAT_CHARGING ;
 int AXP20X_V_OFF ;
 int AXP20X_V_OFF_MASK ;
 int AXP22X_FG_VALID ;
 int EINVAL ;
 int POWER_SUPPLY_HEALTH_DEAD ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int axp20x_get_constant_charge_current (struct axp20x_batt_ps*,int*) ;
 int iio_read_channel_processed (struct iio_channel*,int*) ;
 struct axp20x_batt_ps* power_supply_get_drvdata (struct power_supply*) ;
 int regmap_read (int ,int ,int*) ;
 int stub1 (struct axp20x_batt_ps*,int*) ;

__attribute__((used)) static int axp20x_battery_get_prop(struct power_supply *psy,
       enum power_supply_property psp,
       union power_supply_propval *val)
{
 struct axp20x_batt_ps *axp20x_batt = power_supply_get_drvdata(psy);
 struct iio_channel *chan;
 int ret = 0, reg, val1;

 switch (psp) {
 case 132:
 case 133:
  ret = regmap_read(axp20x_batt->regmap, AXP20X_PWR_OP_MODE,
      &reg);
  if (ret)
   return ret;

  val->intval = !!(reg & AXP20X_PWR_OP_BATT_PRESENT);
  break;

 case 131:
  ret = regmap_read(axp20x_batt->regmap, AXP20X_PWR_INPUT_STATUS,
      &reg);
  if (ret)
   return ret;

  if (reg & AXP20X_PWR_STATUS_BAT_CHARGING) {
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
   return 0;
  }

  ret = iio_read_channel_processed(axp20x_batt->batt_dischrg_i,
       &val1);
  if (ret)
   return ret;

  if (val1) {
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
   return 0;
  }

  ret = regmap_read(axp20x_batt->regmap, AXP20X_FG_RES, &val1);
  if (ret)
   return ret;





  if ((val1 & AXP209_FG_PERCENT) == 100)
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;

 case 134:
  ret = regmap_read(axp20x_batt->regmap, AXP20X_PWR_OP_MODE,
      &val1);
  if (ret)
   return ret;

  if (val1 & AXP20X_PWR_OP_BATT_ACTIVATED) {
   val->intval = POWER_SUPPLY_HEALTH_DEAD;
   return 0;
  }

  val->intval = POWER_SUPPLY_HEALTH_GOOD;
  break;

 case 137:
  ret = axp20x_get_constant_charge_current(axp20x_batt,
        &val->intval);
  if (ret)
   return ret;
  break;

 case 136:
  val->intval = axp20x_batt->max_ccc;
  break;

 case 135:
  ret = regmap_read(axp20x_batt->regmap, AXP20X_PWR_INPUT_STATUS,
      &reg);
  if (ret)
   return ret;

  if (reg & AXP20X_PWR_STATUS_BAT_CHARGING)
   chan = axp20x_batt->batt_chrg_i;
  else
   chan = axp20x_batt->batt_dischrg_i;

  ret = iio_read_channel_processed(chan, &val->intval);
  if (ret)
   return ret;


  val->intval *= 1000;
  break;

 case 138:

  ret = regmap_read(axp20x_batt->regmap, AXP20X_PWR_OP_MODE,
      &reg);
  if (ret)
   return ret;

  if (!(reg & AXP20X_PWR_OP_BATT_PRESENT)) {
   val->intval = 100;
   return 0;
  }

  ret = regmap_read(axp20x_batt->regmap, AXP20X_FG_RES, &reg);
  if (ret)
   return ret;

  if (axp20x_batt->data->has_fg_valid && !(reg & AXP22X_FG_VALID))
   return -EINVAL;





  val->intval = reg & AXP209_FG_PERCENT;
  break;

 case 130:
  return axp20x_batt->data->get_max_voltage(axp20x_batt,
         &val->intval);

 case 129:
  ret = regmap_read(axp20x_batt->regmap, AXP20X_V_OFF, &reg);
  if (ret)
   return ret;

  val->intval = 2600000 + 100000 * (reg & AXP20X_V_OFF_MASK);
  break;

 case 128:
  ret = iio_read_channel_processed(axp20x_batt->batt_v,
       &val->intval);
  if (ret)
   return ret;


  val->intval *= 1000;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
