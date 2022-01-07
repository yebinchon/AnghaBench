
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; int strval; } ;
struct power_supply {int dummy; } ;
struct port_data {int psy_online; int psy_status; int psy_current_max; int psy_voltage_max_design; int psy_voltage_now; int psy_usb_type; int manufacturer; int model_name; struct charger_data* charger; } ;
struct device {int dummy; } ;
struct cros_ec_device {int mkbp_event_supported; } ;
struct charger_data {struct device* dev; struct cros_ec_device* ec_device; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EC_POWER_LIMIT_NONE ;
 int EINVAL ;
 int cros_usbpd_charger_get_port_status (struct port_data*,int) ;
 int dev_err (struct device*,char*,int) ;
 int input_current_limit ;
 int input_voltage_limit ;
 struct port_data* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int cros_usbpd_charger_get_prop(struct power_supply *psy,
           enum power_supply_property psp,
           union power_supply_propval *val)
{
 struct port_data *port = power_supply_get_drvdata(psy);
 struct charger_data *charger = port->charger;
 struct cros_ec_device *ec_device = charger->ec_device;
 struct device *dev = charger->dev;
 int ret;


 switch (psp) {
 case 132:
  if (ec_device->mkbp_event_supported || port->psy_online)
   break;

 case 137:
 case 129:
 case 128:
  ret = cros_usbpd_charger_get_port_status(port, 1);
  if (ret < 0) {
   dev_err(dev, "Failed to get port status (err:0x%x)\n",
    ret);
   return -EINVAL;
  }
  break;
 default:
  break;
 }

 switch (psp) {
 case 132:
  val->intval = port->psy_online;
  break;
 case 131:
  val->intval = port->psy_status;
  break;
 case 137:
  val->intval = port->psy_current_max * 1000;
  break;
 case 129:
  val->intval = port->psy_voltage_max_design * 1000;
  break;
 case 128:
  val->intval = port->psy_voltage_now * 1000;
  break;
 case 130:
  val->intval = port->psy_usb_type;
  break;
 case 136:
  if (input_current_limit == EC_POWER_LIMIT_NONE)
   val->intval = -1;
  else
   val->intval = input_current_limit * 1000;
  break;
 case 135:
  if (input_voltage_limit == EC_POWER_LIMIT_NONE)
   val->intval = -1;
  else
   val->intval = input_voltage_limit * 1000;
  break;
 case 133:
  val->strval = port->model_name;
  break;
 case 134:
  val->strval = port->manufacturer;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
