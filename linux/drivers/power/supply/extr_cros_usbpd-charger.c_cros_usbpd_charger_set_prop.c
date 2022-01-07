
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u16 ;
struct power_supply {int dummy; } ;
struct port_data {struct charger_data* charger; } ;
struct device {int dummy; } ;
struct charger_data {struct device* dev; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EC_POWER_LIMIT_NONE ;
 int EINVAL ;


 int U16_MAX ;
 int cros_usbpd_charger_set_ext_power_limit (struct charger_data*,int,int) ;
 int dev_info (struct device*,char*,...) ;
 int input_current_limit ;
 int input_voltage_limit ;
 struct port_data* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int cros_usbpd_charger_set_prop(struct power_supply *psy,
           enum power_supply_property psp,
           const union power_supply_propval *val)
{
 struct port_data *port = power_supply_get_drvdata(psy);
 struct charger_data *charger = port->charger;
 struct device *dev = charger->dev;
 u16 intval;
 int ret;


 if (val->intval >= U16_MAX * 1000)
  return -EINVAL;

 if (val->intval < 0)
  intval = EC_POWER_LIMIT_NONE;
 else
  intval = val->intval / 1000;

 switch (psp) {
 case 129:
  ret = cros_usbpd_charger_set_ext_power_limit(charger, intval,
       input_voltage_limit);
  if (ret < 0)
   break;

  input_current_limit = intval;
  if (input_current_limit == EC_POWER_LIMIT_NONE)
   dev_info(dev,
     "External Current Limit cleared for all ports\n");
  else
   dev_info(dev,
     "External Current Limit set to %dmA for all ports\n",
     input_current_limit);
  break;
 case 128:
  ret = cros_usbpd_charger_set_ext_power_limit(charger,
       input_current_limit,
       intval);
  if (ret < 0)
   break;

  input_voltage_limit = intval;
  if (input_voltage_limit == EC_POWER_LIMIT_NONE)
   dev_info(dev,
     "External Voltage Limit cleared for all ports\n");
  else
   dev_info(dev,
     "External Voltage Limit set to %dmV for all ports\n",
     input_voltage_limit);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
