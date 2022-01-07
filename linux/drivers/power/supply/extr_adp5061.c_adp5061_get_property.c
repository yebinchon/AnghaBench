
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct power_supply {int dummy; } ;
struct adp5061_state {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int ADP5061_CHG_STATUS_2_BAT_STATUS (int ) ;
 int ADP5061_NO_BATTERY ;
 int EINVAL ;
 int adp5061_get_battery_status (struct adp5061_state*,union power_supply_propval*) ;
 int adp5061_get_charger_status (struct adp5061_state*,union power_supply_propval*) ;
 int adp5061_get_chg_type (struct adp5061_state*,union power_supply_propval*) ;
 int adp5061_get_chg_volt_lim (struct adp5061_state*,union power_supply_propval*) ;
 int adp5061_get_const_chg_current (struct adp5061_state*,union power_supply_propval*) ;
 int adp5061_get_input_current_limit (struct adp5061_state*,union power_supply_propval*) ;
 int adp5061_get_max_voltage (struct adp5061_state*,union power_supply_propval*) ;
 int adp5061_get_min_voltage (struct adp5061_state*,union power_supply_propval*) ;
 int adp5061_get_prechg_current (struct adp5061_state*,union power_supply_propval*) ;
 int adp5061_get_status (struct adp5061_state*,int *,int *) ;
 int adp5061_get_termination_current (struct adp5061_state*,union power_supply_propval*) ;
 int adp5061_get_vweak_th (struct adp5061_state*,union power_supply_propval*) ;
 struct adp5061_state* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int adp5061_get_property(struct power_supply *psy,
    enum power_supply_property psp,
    union power_supply_propval *val)
{
 struct adp5061_state *st = power_supply_get_drvdata(psy);
 u8 status1, status2;
 int mode, ret;

 switch (psp) {
 case 132:
  ret = adp5061_get_status(st, &status1, &status2);
  if (ret < 0)
   return ret;

  mode = ADP5061_CHG_STATUS_2_BAT_STATUS(status2);
  if (mode == ADP5061_NO_BATTERY)
   val->intval = 0;
  else
   val->intval = 1;
  break;
 case 137:
  return adp5061_get_chg_type(st, val);
 case 134:



  return adp5061_get_input_current_limit(st, val);
 case 129:



  return adp5061_get_max_voltage(st, val);
 case 128:




  return adp5061_get_min_voltage(st, val);
 case 135:



  return adp5061_get_chg_volt_lim(st, val);
 case 136:




  return adp5061_get_const_chg_current(st, val);
 case 133:




  return adp5061_get_prechg_current(st, val);
 case 130:





  return adp5061_get_vweak_th(st, val);
 case 131:




  return adp5061_get_charger_status(st, val);
 case 139:




  return adp5061_get_battery_status(st, val);
 case 138:

  return adp5061_get_termination_current(st, val);
 default:
  return -EINVAL;
 }

 return 0;
}
