
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {void* intval; int strval; } ;
struct power_supply {int dummy; } ;
struct bq24257_state {int fault; void* power_good; int status; } ;
struct TYPE_2__ {size_t ichg; size_t vbat; size_t iterm; } ;
struct bq24257_device {size_t chip; TYPE_1__ init_data; int lock; struct bq24257_state state; } ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;


 int BQ24257_ICHG_MAP_SIZE ;
 int BQ24257_MANUFACTURER ;
 int BQ24257_VBAT_MAP_SIZE ;
 int EINVAL ;






 void* POWER_SUPPLY_HEALTH_GOOD ;
 void* POWER_SUPPLY_HEALTH_OVERHEAT ;
 void* POWER_SUPPLY_HEALTH_OVERVOLTAGE ;
 void* POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE ;
 void* POWER_SUPPLY_HEALTH_UNSPEC_FAILURE ;
 void* POWER_SUPPLY_STATUS_CHARGING ;
 void* POWER_SUPPLY_STATUS_DISCHARGING ;
 void* POWER_SUPPLY_STATUS_FULL ;
 void* POWER_SUPPLY_STATUS_NOT_CHARGING ;
 void* POWER_SUPPLY_STATUS_UNKNOWN ;
 int STATUS_CHARGE_DONE ;
 int STATUS_CHARGE_IN_PROGRESS ;
 int STATUS_READY ;
 int bq24257_get_input_current_limit (struct bq24257_device*,union power_supply_propval*) ;
 void** bq24257_ichg_map ;
 void** bq24257_iterm_map ;
 void** bq24257_vbat_map ;
 int * bq2425x_chip_name ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bq24257_device* power_supply_get_drvdata (struct power_supply*) ;

__attribute__((used)) static int bq24257_power_supply_get_property(struct power_supply *psy,
          enum power_supply_property psp,
          union power_supply_propval *val)
{
 struct bq24257_device *bq = power_supply_get_drvdata(psy);
 struct bq24257_state state;

 mutex_lock(&bq->lock);
 state = bq->state;
 mutex_unlock(&bq->lock);

 switch (psp) {
 case 128:
  if (!state.power_good)
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  else if (state.status == STATUS_READY)
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
  else if (state.status == STATUS_CHARGE_IN_PROGRESS)
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else if (state.status == STATUS_CHARGE_DONE)
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else
   val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
  break;

 case 131:
  val->strval = BQ24257_MANUFACTURER;
  break;

 case 130:
  val->strval = bq2425x_chip_name[bq->chip];
  break;

 case 129:
  val->intval = state.power_good;
  break;

 case 133:
  switch (state.fault) {
  case 141:
   val->intval = POWER_SUPPLY_HEALTH_GOOD;
   break;

  case 142:
  case 144:
   val->intval = POWER_SUPPLY_HEALTH_OVERVOLTAGE;
   break;

  case 139:
  case 143:
   val->intval = POWER_SUPPLY_HEALTH_OVERHEAT;
   break;

  case 140:
   val->intval = POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE;
   break;

  default:
   val->intval = POWER_SUPPLY_HEALTH_UNSPEC_FAILURE;
   break;
  }

  break;

 case 137:
  val->intval = bq24257_ichg_map[bq->init_data.ichg];
  break;

 case 136:
  val->intval = bq24257_ichg_map[BQ24257_ICHG_MAP_SIZE - 1];
  break;

 case 135:
  val->intval = bq24257_vbat_map[bq->init_data.vbat];
  break;

 case 134:
  val->intval = bq24257_vbat_map[BQ24257_VBAT_MAP_SIZE - 1];
  break;

 case 138:
  val->intval = bq24257_iterm_map[bq->init_data.iterm];
  break;

 case 132:
  return bq24257_get_input_current_limit(bq, val);

 default:
  return -EINVAL;
 }

 return 0;
}
