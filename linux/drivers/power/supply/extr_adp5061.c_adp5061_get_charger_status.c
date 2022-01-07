
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct adp5061_state {int dummy; } ;






 int ADP5061_CHG_STATUS_1_CHG_STATUS (int ) ;


 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int adp5061_get_status (struct adp5061_state*,int *,int *) ;

__attribute__((used)) static int adp5061_get_charger_status(struct adp5061_state *st,
          union power_supply_propval *val)
{
 u8 status1, status2;
 int ret;

 ret = adp5061_get_status(st, &status1, &status2);
 if (ret < 0)
  return ret;

 switch (ADP5061_CHG_STATUS_1_CHG_STATUS(status1)) {
 case 130:
  val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;
 case 128:
 case 132:
 case 131:
  val->intval = POWER_SUPPLY_STATUS_CHARGING;
  break;
 case 133:
  val->intval = POWER_SUPPLY_STATUS_FULL;
  break;
 case 129:

  val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  break;
 default:
  val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
 }

 return ret;
}
