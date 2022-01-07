
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union power_supply_propval {int intval; } ;
struct sbs_info {scalar_t__ poll_time; scalar_t__ last_state; int power_supply; int work; } ;
struct i2c_client {int dummy; } ;
typedef int s32 ;
typedef int s16 ;
typedef enum power_supply_property { ____Placeholder_power_supply_property } power_supply_property ;
struct TYPE_2__ {scalar_t__ min_value; int max_value; int addr; } ;


 int BATTERY_DISCHARGING ;
 int BATTERY_FULL_CHARGED ;
 int BATTERY_FULL_DISCHARGED ;
 int BATTERY_INITIALIZED ;
 int POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_FULL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_NORMAL ;
 int POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN ;
 int POWER_SUPPLY_PROP_CAPACITY ;
 int POWER_SUPPLY_PROP_CAPACITY_LEVEL ;
 int POWER_SUPPLY_PROP_STATUS ;
 int POWER_SUPPLY_STATUS_CHARGING ;
 int POWER_SUPPLY_STATUS_DISCHARGING ;
 int POWER_SUPPLY_STATUS_FULL ;
 scalar_t__ POWER_SUPPLY_STATUS_UNKNOWN ;
 int cancel_delayed_work_sync (int *) ;
 struct sbs_info* i2c_get_clientdata (struct i2c_client*) ;
 scalar_t__ min (int,int) ;
 int power_supply_changed (int ) ;
 TYPE_1__* sbs_data ;
 int sbs_read_word_data (struct i2c_client*,int ) ;
 int sbs_status_correct (struct i2c_client*,int*) ;

__attribute__((used)) static int sbs_get_battery_property(struct i2c_client *client,
 int reg_offset, enum power_supply_property psp,
 union power_supply_propval *val)
{
 struct sbs_info *chip = i2c_get_clientdata(client);
 s32 ret;

 ret = sbs_read_word_data(client, sbs_data[reg_offset].addr);
 if (ret < 0)
  return ret;


 if (sbs_data[reg_offset].min_value < 0)
  ret = (s16)ret;

 if (ret >= sbs_data[reg_offset].min_value &&
     ret <= sbs_data[reg_offset].max_value) {
  val->intval = ret;
  if (psp == POWER_SUPPLY_PROP_CAPACITY_LEVEL) {
   if (!(ret & BATTERY_INITIALIZED))
    val->intval =
     POWER_SUPPLY_CAPACITY_LEVEL_UNKNOWN;
   else if (ret & BATTERY_FULL_CHARGED)
    val->intval =
     POWER_SUPPLY_CAPACITY_LEVEL_FULL;
   else if (ret & BATTERY_FULL_DISCHARGED)
    val->intval =
     POWER_SUPPLY_CAPACITY_LEVEL_CRITICAL;
   else
    val->intval =
     POWER_SUPPLY_CAPACITY_LEVEL_NORMAL;
   return 0;
  } else if (psp != POWER_SUPPLY_PROP_STATUS) {
   return 0;
  }

  if (ret & BATTERY_FULL_CHARGED)
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else if (ret & BATTERY_DISCHARGING)
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  else
   val->intval = POWER_SUPPLY_STATUS_CHARGING;

  sbs_status_correct(client, &val->intval);

  if (chip->poll_time == 0)
   chip->last_state = val->intval;
  else if (chip->last_state != val->intval) {
   cancel_delayed_work_sync(&chip->work);
   power_supply_changed(chip->power_supply);
   chip->poll_time = 0;
  }
 } else {
  if (psp == POWER_SUPPLY_PROP_STATUS)
   val->intval = POWER_SUPPLY_STATUS_UNKNOWN;
  else if (psp == POWER_SUPPLY_PROP_CAPACITY)



   val->intval = min(ret, 100);
  else
   val->intval = 0;
 }

 return 0;
}
