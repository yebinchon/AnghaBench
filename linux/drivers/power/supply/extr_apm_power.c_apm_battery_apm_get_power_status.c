
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union power_supply_propval {scalar_t__ intval; } ;
struct apm_power_info {int battery_life; int time; int units; int battery_status; int battery_flag; int ac_line_status; } ;


 int APM_AC_OFFLINE ;
 int APM_AC_ONLINE ;
 int APM_BATTERY_STATUS_CHARGING ;
 int APM_BATTERY_STATUS_CRITICAL ;
 int APM_BATTERY_STATUS_HIGH ;
 int APM_BATTERY_STATUS_LOW ;
 int APM_UNITS_MINS ;
 int CAPACITY ;
 scalar_t__ MPSY_PROP (int ,union power_supply_propval*) ;
 scalar_t__ POWER_SUPPLY_STATUS_CHARGING ;
 scalar_t__ POWER_SUPPLY_STATUS_FULL ;
 scalar_t__ POWER_SUPPLY_STATUS_NOT_CHARGING ;
 scalar_t__ POWER_SUPPLY_STATUS_UNKNOWN ;
 int SOURCE_CHARGE ;
 int SOURCE_ENERGY ;
 int SOURCE_VOLTAGE ;
 int STATUS ;
 int TIME_TO_EMPTY_AVG ;
 int TIME_TO_EMPTY_NOW ;
 int TIME_TO_FULL_AVG ;
 int TIME_TO_FULL_NOW ;
 int apm_mutex ;
 void* calculate_capacity (int ) ;
 void* calculate_time (int) ;
 int find_main_battery () ;
 int main_battery ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void apm_battery_apm_get_power_status(struct apm_power_info *info)
{
 union power_supply_propval status;
 union power_supply_propval capacity, time_to_full, time_to_empty;

 mutex_lock(&apm_mutex);
 find_main_battery();
 if (!main_battery) {
  mutex_unlock(&apm_mutex);
  return;
 }



 if (MPSY_PROP(STATUS, &status))
  status.intval = POWER_SUPPLY_STATUS_UNKNOWN;



 if ((status.intval == POWER_SUPPLY_STATUS_CHARGING) ||
     (status.intval == POWER_SUPPLY_STATUS_NOT_CHARGING) ||
     (status.intval == POWER_SUPPLY_STATUS_FULL))
  info->ac_line_status = APM_AC_ONLINE;
 else
  info->ac_line_status = APM_AC_OFFLINE;



 if (MPSY_PROP(CAPACITY, &capacity) == 0) {
  info->battery_life = capacity.intval;
 } else {

  info->battery_life = calculate_capacity(SOURCE_ENERGY);

  if (info->battery_life == -1)
   info->battery_life = calculate_capacity(SOURCE_CHARGE);
  if (info->battery_life == -1)
   info->battery_life = calculate_capacity(SOURCE_VOLTAGE);
 }



 if (status.intval == POWER_SUPPLY_STATUS_CHARGING) {
  info->battery_status = APM_BATTERY_STATUS_CHARGING;
 } else {
  if (info->battery_life > 50)
   info->battery_status = APM_BATTERY_STATUS_HIGH;
  else if (info->battery_life > 5)
   info->battery_status = APM_BATTERY_STATUS_LOW;
  else
   info->battery_status = APM_BATTERY_STATUS_CRITICAL;
 }
 info->battery_flag = info->battery_status;



 info->units = APM_UNITS_MINS;

 if (status.intval == POWER_SUPPLY_STATUS_CHARGING) {
  if (!MPSY_PROP(TIME_TO_FULL_AVG, &time_to_full) ||
    !MPSY_PROP(TIME_TO_FULL_NOW, &time_to_full))
   info->time = time_to_full.intval / 60;
  else
   info->time = calculate_time(status.intval);
 } else {
  if (!MPSY_PROP(TIME_TO_EMPTY_AVG, &time_to_empty) ||
         !MPSY_PROP(TIME_TO_EMPTY_NOW, &time_to_empty))
   info->time = time_to_empty.intval / 60;
  else
   info->time = calculate_time(status.intval);
 }

 mutex_unlock(&apm_mutex);
}
