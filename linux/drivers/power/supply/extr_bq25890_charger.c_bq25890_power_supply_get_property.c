
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; char* strval; } ;
struct power_supply {int dummy; } ;
struct bq25890_state {int online; int chrg_fault; int bat_fault; int boost_fault; int chrg_status; } ;
struct TYPE_2__ {int iterm; int vreg; int ichg; } ;
struct bq25890_device {TYPE_1__ init_data; int chip_id; int lock; struct bq25890_state state; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int BQ25890_ID ;
 char* BQ25890_MANUFACTURER ;
 int BQ25895_ID ;
 int BQ25896_ID ;
 int CHRG_FAULT_THERMAL_SHUTDOWN ;
 int CHRG_FAULT_TIMER_EXPIRED ;
 int EINVAL ;
 int F_BATV ;
 int F_ICHGR ;
 int F_SYSV ;
 int POWER_SUPPLY_HEALTH_GOOD ;
 int POWER_SUPPLY_HEALTH_OVERHEAT ;
 int POWER_SUPPLY_HEALTH_OVERVOLTAGE ;
 int POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE ;
 int POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 int POWER_SUPPLY_STATUS_NOT_CHARGING ;
 int POWER_SUPPLY_STATUS_UNKNOWN ;
 int STATUS_FAST_CHARGING ;
 int STATUS_NOT_CHARGING ;
 int STATUS_PRE_CHARGING ;
 int STATUS_TERMINATION_DONE ;
 int TBL_ICHG ;
 int TBL_ITERM ;
 int TBL_VREG ;
 int bq25890_field_read (struct bq25890_device*,int ) ;
 void* bq25890_find_val (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bq25890_device* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int bq25890_power_supply_get_property(struct power_supply *psy,
          enum power_supply_property psp,
          union power_supply_propval *val)
{
 int ret;
 struct bq25890_device *bq = power_supply_get_drvdata(psy);
 struct bq25890_state state;

 mutex_lock(&bq->lock);
 state = bq->state;
 mutex_unlock(&bq->lock);

 switch (psp) {
 case 129:
  if (!state.online)
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  else if (state.chrg_status == STATUS_NOT_CHARGING)
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  else if (state.chrg_status == STATUS_PRE_CHARGING ||
    state.chrg_status == STATUS_FAST_CHARGING)
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else if (state.chrg_status == STATUS_TERMINATION_DONE)
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else
   val->intval = POWER_SUPPLY_STATUS_UNKNOWN;

  break;

 case 132:
  val->strval = BQ25890_MANUFACTURER;
  break;

 case 131:
  if (bq->chip_id == BQ25890_ID)
   val->strval = "BQ25890";
  else if (bq->chip_id == BQ25895_ID)
   val->strval = "BQ25895";
  else if (bq->chip_id == BQ25896_ID)
   val->strval = "BQ25896";
  else
   val->strval = "UNKNOWN";

  break;

 case 130:
  val->intval = state.online;
  break;

 case 133:
  if (!state.chrg_fault && !state.bat_fault && !state.boost_fault)
   val->intval = POWER_SUPPLY_HEALTH_GOOD;
  else if (state.bat_fault)
   val->intval = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
  else if (state.chrg_fault == CHRG_FAULT_TIMER_EXPIRED)
   val->intval = POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE;
  else if (state.chrg_fault == CHRG_FAULT_THERMAL_SHUTDOWN)
   val->intval = POWER_SUPPLY_HEALTH_OVERHEAT;
  else
   val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
  break;

 case 137:
  ret = bq25890_field_read(bq, F_ICHGR);
  if (ret < 0)
   return ret;


  val->intval = ret * 50000;
  break;

 case 136:
  val->intval = bq25890_find_val(bq->init_data.ichg, TBL_ICHG);
  break;

 case 135:
  if (!state.online) {
   val->intval = 0;
   break;
  }

  ret = bq25890_field_read(bq, F_BATV);
  if (ret < 0)
   return ret;


  val->intval = 2304000 + ret * 20000;
  break;

 case 134:
  val->intval = bq25890_find_val(bq->init_data.vreg, TBL_VREG);
  break;

 case 138:
  val->intval = bq25890_find_val(bq->init_data.iterm, TBL_ITERM);
  break;

 case 128:
  ret = bq25890_field_read(bq, F_SYSV);
  if (ret < 0)
   return ret;


  val->intval = 2304000 + ret * 20000;
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
