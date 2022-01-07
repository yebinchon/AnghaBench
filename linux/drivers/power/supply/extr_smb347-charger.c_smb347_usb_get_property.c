
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct smb347_charger {int usb_online; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;



 int get_const_charge_current (struct smb347_charger*) ;
 int get_const_charge_voltage (struct smb347_charger*) ;
 struct smb347_charger* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int smb347_usb_get_property(struct power_supply *psy,
       enum power_supply_property prop,
       union power_supply_propval *val)
{
 struct smb347_charger *smb = power_supply_get_drvdata(psy);
 int ret;

 switch (prop) {
 case 128:
  val->intval = smb->usb_online;
  break;

 case 129:
  ret = get_const_charge_voltage(smb);
  if (ret < 0)
   return ret;
  else
   val->intval = ret;
  break;

 case 130:
  ret = get_const_charge_current(smb);
  if (ret < 0)
   return ret;
  else
   val->intval = ret;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
