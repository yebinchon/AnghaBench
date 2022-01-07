
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {int intval; } ;
typedef int u8 ;
struct lp8788_charger {int lp; } ;
typedef enum lp8788_charging_state { ____Placeholder_lp8788_charging_state } lp8788_charging_state ;



 int LP8788_CHG_STATE_M ;
 int LP8788_CHG_STATE_S ;
 int LP8788_CHG_STATUS ;





 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int lp8788_read_byte (int ,int ,int*) ;

__attribute__((used)) static int lp8788_get_battery_status(struct lp8788_charger *pchg,
    union power_supply_propval *val)
{
 enum lp8788_charging_state state;
 u8 data;
 int ret;

 ret = lp8788_read_byte(pchg->lp, LP8788_CHG_STATUS, &data);
 if (ret)
  return ret;

 state = (data & LP8788_CHG_STATE_M) >> LP8788_CHG_STATE_S;
 switch (state) {
 case 129:
  val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  break;
 case 128:
 case 133:
 case 132:
 case 131:
  val->intval = POWER_SUPPLY_STATUS_CHARGING;
  break;
 case 130:
  val->intval = POWER_SUPPLY_STATUS_FULL;
  break;
 default:
  val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  break;
 }

 return 0;
}
