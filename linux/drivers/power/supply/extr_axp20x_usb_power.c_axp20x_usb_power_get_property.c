
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct axp20x_usb_power {int regmap; int axp20x_id; int vbus_i; int vbus_v; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int AXP202_ID ;
 int AXP20X_PWR_INPUT_STATUS ;
 unsigned int AXP20X_PWR_STATUS_VBUS_PRESENT ;
 unsigned int AXP20X_PWR_STATUS_VBUS_USED ;
 int AXP20X_USB_OTG_STATUS ;
 unsigned int AXP20X_USB_STATUS_VBUS_VALID ;
 int AXP20X_VBUS_IPSOUT_MGMT ;
 int AXP20X_VBUS_I_ADC_H ;
 int AXP20X_VBUS_VHOLD_uV (unsigned int) ;
 int AXP20X_VBUS_V_ADC_H ;
 int AXP813_ID ;
 int CONFIG_AXP20X_ADC ;
 int EINVAL ;
 int IS_ENABLED (int ) ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_UNKNOWN ;
 int POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ;







 int axp20x_get_current_max (struct axp20x_usb_power*,int*) ;
 int axp20x_read_variable_width (int ,int ,int) ;
 int axp813_get_current_max (struct axp20x_usb_power*,int*) ;
 int iio_read_channel_processed (int ,int*) ;
 struct axp20x_usb_power* power_supply_get_drvdata (struct power_supply*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int axp20x_usb_power_get_property(struct power_supply *psy,
 enum power_supply_property psp, union power_supply_propval *val)
{
 struct axp20x_usb_power *power = power_supply_get_drvdata(psy);
 unsigned int input, v;
 int ret;

 switch (psp) {
 case 129:
  ret = regmap_read(power->regmap, AXP20X_VBUS_IPSOUT_MGMT, &v);
  if (ret)
   return ret;

  val->intval = AXP20X_VBUS_VHOLD_uV(v);
  return 0;
 case 128:
  if (IS_ENABLED(CONFIG_AXP20X_ADC)) {
   ret = iio_read_channel_processed(power->vbus_v,
        &val->intval);
   if (ret)
    return ret;





   val->intval *= 1000;
   return 0;
  }

  ret = axp20x_read_variable_width(power->regmap,
       AXP20X_VBUS_V_ADC_H, 12);
  if (ret < 0)
   return ret;

  val->intval = ret * 1700;
  return 0;
 case 134:
  if (power->axp20x_id == AXP813_ID)
   return axp813_get_current_max(power, &val->intval);
  return axp20x_get_current_max(power, &val->intval);
 case 133:
  if (IS_ENABLED(CONFIG_AXP20X_ADC)) {
   ret = iio_read_channel_processed(power->vbus_i,
        &val->intval);
   if (ret)
    return ret;





   val->intval *= 1000;
   return 0;
  }

  ret = axp20x_read_variable_width(power->regmap,
       AXP20X_VBUS_I_ADC_H, 12);
  if (ret < 0)
   return ret;

  val->intval = ret * 375;
  return 0;
 default:
  break;
 }


 ret = regmap_read(power->regmap, AXP20X_PWR_INPUT_STATUS, &input);
 if (ret)
  return ret;

 switch (psp) {
 case 132:
  if (!(input & AXP20X_PWR_STATUS_VBUS_PRESENT)) {
   val->intval = POWER_SUPPLY_HEALTH_UNKNOWN;
   break;
  }

  val->intval = POWER_SUPPLY_HEALTH_GOOD;

  if (power->axp20x_id == AXP202_ID) {
   ret = regmap_read(power->regmap,
       AXP20X_USB_OTG_STATUS, &v);
   if (ret)
    return ret;

   if (!(v & AXP20X_USB_STATUS_VBUS_VALID))
    val->intval =
     POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  }
  break;
 case 130:
  val->intval = !!(input & AXP20X_PWR_STATUS_VBUS_PRESENT);
  break;
 case 131:
  val->intval = !!(input & AXP20X_PWR_STATUS_VBUS_USED);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
