
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct charger_manager {int emergency_stop; TYPE_1__ fullbatt_vchk_work; int dev; scalar_t__ charger_enabled; } ;


 size_t CM_EVENT_BATT_FULL ;
 scalar_t__ check_charging_duration (struct charger_manager*) ;
 int cm_check_thermal_status (struct charger_manager*) ;
 char** default_event_names ;
 int dev_dbg (int ,char*) ;
 int dev_info (int ,char*) ;
 int fullbatt_vchk (int *) ;
 scalar_t__ is_ext_pwr_online (struct charger_manager*) ;
 scalar_t__ is_full_charged (struct charger_manager*) ;
 int try_charger_enable (struct charger_manager*,int) ;
 int uevent_notify (struct charger_manager*,char*) ;

__attribute__((used)) static bool _cm_monitor(struct charger_manager *cm)
{
 int temp_alrt;

 temp_alrt = cm_check_thermal_status(cm);


 if (temp_alrt && cm->emergency_stop)
  return 0;





 if (temp_alrt) {
  cm->emergency_stop = temp_alrt;
  if (!try_charger_enable(cm, 0))
   uevent_notify(cm, default_event_names[temp_alrt]);





 } else if (!cm->emergency_stop && check_charging_duration(cm)) {
  dev_dbg(cm->dev,
   "Charging/Discharging duration is out of range\n");





 } else if (!cm->emergency_stop && is_ext_pwr_online(cm) &&
   !cm->charger_enabled) {
  fullbatt_vchk(&cm->fullbatt_vchk_work.work);





 } else if (!cm->emergency_stop && is_full_charged(cm) &&
   cm->charger_enabled) {
  dev_info(cm->dev, "EVENT_HANDLE: Battery Fully Charged\n");
  uevent_notify(cm, default_event_names[CM_EVENT_BATT_FULL]);

  try_charger_enable(cm, 0);

  fullbatt_vchk(&cm->fullbatt_vchk_work.work);
 } else {
  cm->emergency_stop = 0;
  if (is_ext_pwr_online(cm)) {
   if (!try_charger_enable(cm, 1))
    uevent_notify(cm, "CHARGING");
  }
 }

 return 1;
}
