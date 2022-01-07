
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {void* intval; } ;
typedef int uint8_t ;
struct olpc_battery_data {scalar_t__ new_proto; } ;


 int BAT_STAT_AC ;
 int BAT_STAT_CHARGING ;
 int BAT_STAT_DISCHARGING ;
 int BAT_STAT_FULL ;
 int BAT_STAT_TRICKLE ;
 void* POWER_SUPPLY_STATUS_CHARGING ;
 void* POWER_SUPPLY_STATUS_DISCHARGING ;
 void* POWER_SUPPLY_STATUS_FULL ;
 void* POWER_SUPPLY_STATUS_NOT_CHARGING ;

__attribute__((used)) static int olpc_bat_get_status(struct olpc_battery_data *data,
  union power_supply_propval *val, uint8_t ec_byte)
{
 if (data->new_proto) {
  if (ec_byte & (BAT_STAT_CHARGING | BAT_STAT_TRICKLE))
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
  else if (ec_byte & BAT_STAT_DISCHARGING)
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  else if (ec_byte & BAT_STAT_FULL)
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else
   val->intval = POWER_SUPPLY_STATUS_NOT_CHARGING;
 } else {

  if (!(ec_byte & BAT_STAT_AC))
   val->intval = POWER_SUPPLY_STATUS_DISCHARGING;
  else if (ec_byte & BAT_STAT_FULL)
   val->intval = POWER_SUPPLY_STATUS_FULL;
  else
   val->intval = POWER_SUPPLY_STATUS_CHARGING;
 }

 return 0;
}
