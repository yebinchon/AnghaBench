
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct TYPE_2__ {int min_volt; int max_volt; int max_curr; } ;
struct tcpm_port {TYPE_1__ pps_data; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;



 struct tcpm_port* power_supply_get_drvdata (struct power_supply*) ;
 int tcpm_pps_set_op_curr (struct tcpm_port*,int) ;
 int tcpm_pps_set_out_volt (struct tcpm_port*,int) ;
 int tcpm_psy_set_online (struct tcpm_port*,union power_supply_propval const*) ;

__attribute__((used)) static int tcpm_psy_set_prop(struct power_supply *psy,
        enum power_supply_property psp,
        const union power_supply_propval *val)
{
 struct tcpm_port *port = power_supply_get_drvdata(psy);
 int ret;

 switch (psp) {
 case 129:
  ret = tcpm_psy_set_online(port, val);
  break;
 case 128:
  if (val->intval < port->pps_data.min_volt * 1000 ||
      val->intval > port->pps_data.max_volt * 1000)
   ret = -EINVAL;
  else
   ret = tcpm_pps_set_out_volt(port, val->intval / 1000);
  break;
 case 130:
  if (val->intval > port->pps_data.max_curr * 1000)
   ret = -EINVAL;
  else
   ret = tcpm_pps_set_op_curr(port, val->intval / 1000);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
