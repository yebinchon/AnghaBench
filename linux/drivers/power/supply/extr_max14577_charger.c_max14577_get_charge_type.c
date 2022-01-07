
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max14577_charger {int dummy; } ;


 int POWER_SUPPLY_CHARGE_TYPE_FAST ;
 int POWER_SUPPLY_CHARGE_TYPE_NONE ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int max14577_get_charger_state (struct max14577_charger*,int*) ;

__attribute__((used)) static int max14577_get_charge_type(struct max14577_charger *chg, int *val)
{
 int ret, charging;
 ret = max14577_get_charger_state(chg, &charging);
 if (ret < 0)
  return ret;

 if (charging == POWER_SUPPLY_STATUS_CHARGING)
  *val = POWER_SUPPLY_CHARGE_TYPE_FAST;
 else
  *val = POWER_SUPPLY_CHARGE_TYPE_NONE;

 return 0;
}
