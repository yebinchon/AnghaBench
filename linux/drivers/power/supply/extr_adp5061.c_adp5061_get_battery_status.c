
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct adp5061_state {int dummy; } ;


 int ADP5061_CHG_STATUS_2_BAT_STATUS (int ) ;
 int POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_LOW ;
 int POWER_SUPPLY_CAPACITY_LEVEL_NORMAL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN ;
 int adp5061_get_status (struct adp5061_state*,int *,int *) ;

__attribute__((used)) static int adp5061_get_battery_status(struct adp5061_state *st,
          union power_supply_propval *val)
{
 u8 status1, status2;
 int ret;

 ret = adp5061_get_status(st, &status1, &status2);
 if (ret < 0)
  return ret;

 switch (ADP5061_CHG_STATUS_2_BAT_STATUS(status2)) {
 case 0x0:
 case 0x1:
  val->intval = POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN;
  break;
 case 0x2:
  val->intval = POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL;
  break;
 case 0x3:
  val->intval = POWER_SUPPLY_CAPACITY_LEVEL_LOW;
  break;
 case 0x4:
  val->intval = POWER_SUPPLY_CAPACITY_LEVEL_NORMAL;
  break;
 }

 return ret;
}
