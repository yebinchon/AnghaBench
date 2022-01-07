
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; int strval; } ;
struct TYPE_2__ {int technology; int voltage_min_design; int voltage_max_design; int charge_full_design; int name; } ;
struct smb347_charger_platform_data {TYPE_1__ battery_info; } ;
struct smb347_charger {struct smb347_charger_platform_data* pdata; } ;
struct power_supply {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int ENODATA ;
 int POWER_SUPPLY_CHARGE_TYPE_FAST ;
 int POWER_SUPPLY_CHARGE_TYPE_NONE ;
 int POWER_SUPPLY_CHARGE_TYPE_TRICKLE ;







 struct smb347_charger* power_supply_get_drvdata (struct power_supply*) ;
 int smb347_charging_status (struct smb347_charger*) ;
 int smb347_get_charging_status (struct smb347_charger*) ;
 int smb347_is_ps_online (struct smb347_charger*) ;
 int smb347_update_ps_status (struct smb347_charger*) ;

__attribute__((used)) static int smb347_battery_get_property(struct power_supply *psy,
           enum power_supply_property prop,
           union power_supply_propval *val)
{
 struct smb347_charger *smb = power_supply_get_drvdata(psy);
 const struct smb347_charger_platform_data *pdata = smb->pdata;
 int ret;

 ret = smb347_update_ps_status(smb);
 if (ret < 0)
  return ret;

 switch (prop) {
 case 131:
  ret = smb347_get_charging_status(smb);
  if (ret < 0)
   return ret;
  val->intval = ret;
  break;

 case 133:
  if (!smb347_is_ps_online(smb))
   return -ENODATA;





  switch (smb347_charging_status(smb)) {
  case 1:
   val->intval = POWER_SUPPLY_CHARGE_TYPE_TRICKLE;
   break;
  case 2:
   val->intval = POWER_SUPPLY_CHARGE_TYPE_FAST;
   break;
  default:
   val->intval = POWER_SUPPLY_CHARGE_TYPE_NONE;
   break;
  }
  break;

 case 130:
  val->intval = pdata->battery_info.technology;
  break;

 case 128:
  val->intval = pdata->battery_info.voltage_min_design;
  break;

 case 129:
  val->intval = pdata->battery_info.voltage_max_design;
  break;

 case 134:
  val->intval = pdata->battery_info.charge_full_design;
  break;

 case 132:
  val->strval = pdata->battery_info.name;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
