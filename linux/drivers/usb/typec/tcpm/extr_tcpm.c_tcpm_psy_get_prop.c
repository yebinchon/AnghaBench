
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct tcpm_port {int usb_type; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;







 struct tcpm_port* power_supply_get_drvdata (struct power_supply*) ;
 int tcpm_psy_get_current_max (struct tcpm_port*,union power_supply_propval*) ;
 int tcpm_psy_get_current_now (struct tcpm_port*,union power_supply_propval*) ;
 int tcpm_psy_get_online (struct tcpm_port*,union power_supply_propval*) ;
 int tcpm_psy_get_voltage_max (struct tcpm_port*,union power_supply_propval*) ;
 int tcpm_psy_get_voltage_min (struct tcpm_port*,union power_supply_propval*) ;
 int tcpm_psy_get_voltage_now (struct tcpm_port*,union power_supply_propval*) ;

__attribute__((used)) static int tcpm_psy_get_prop(struct power_supply *psy,
        enum power_supply_property psp,
        union power_supply_propval *val)
{
 struct tcpm_port *port = power_supply_get_drvdata(psy);
 int ret = 0;

 switch (psp) {
 case 131:
  val->intval = port->usb_type;
  break;
 case 132:
  ret = tcpm_psy_get_online(port, val);
  break;
 case 129:
  ret = tcpm_psy_get_voltage_min(port, val);
  break;
 case 130:
  ret = tcpm_psy_get_voltage_max(port, val);
  break;
 case 128:
  ret = tcpm_psy_get_voltage_now(port, val);
  break;
 case 134:
  ret = tcpm_psy_get_current_max(port, val);
  break;
 case 133:
  ret = tcpm_psy_get_current_now(port, val);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
