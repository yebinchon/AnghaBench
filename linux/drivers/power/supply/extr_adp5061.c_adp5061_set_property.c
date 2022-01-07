
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
struct power_supply {int dummy; } ;
struct adp5061_state {int dummy; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int EINVAL ;
 int adp5061_set_const_chg_current (struct adp5061_state*,int ) ;
 int adp5061_set_const_chg_vmax (struct adp5061_state*,int ) ;
 int adp5061_set_input_current_limit (struct adp5061_state*,int ) ;
 int adp5061_set_max_voltage (struct adp5061_state*,int ) ;
 int adp5061_set_min_voltage (struct adp5061_state*,int ) ;
 int adp5061_set_prechg_current (struct adp5061_state*,int ) ;
 int adp5061_set_termination_current (struct adp5061_state*,int ) ;
 int adp5061_set_vweak_th (struct adp5061_state*,int ) ;
 struct adp5061_state* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int adp5061_set_property(struct power_supply *psy,
    enum power_supply_property psp,
    const union power_supply_propval *val)
{
 struct adp5061_state *st = power_supply_get_drvdata(psy);

 switch (psp) {
 case 132:
  return adp5061_set_input_current_limit(st, val->intval);
 case 129:
  return adp5061_set_max_voltage(st, val->intval);
 case 128:
  return adp5061_set_min_voltage(st, val->intval);
 case 133:
  return adp5061_set_const_chg_vmax(st, val->intval);
 case 134:
  return adp5061_set_const_chg_current(st, val->intval);
 case 131:
  return adp5061_set_prechg_current(st, val->intval);
 case 130:
  return adp5061_set_vweak_th(st, val->intval);
 case 135:
  return adp5061_set_termination_current(st, val->intval);
 default:
  return -EINVAL;
 }

 return 0;
}
