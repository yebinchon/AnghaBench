
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charger_manager {int dev; } ;


 size_t CM_EVENT_BATT_OUT ;
 scalar_t__ cm_suspended ;
 char** default_event_names ;
 int dev_emerg (int ,char*) ;
 int device_set_wakeup_capable (int ,int) ;
 int is_batt_present (struct charger_manager*) ;
 int uevent_notify (struct charger_manager*,char*) ;

__attribute__((used)) static void battout_handler(struct charger_manager *cm)
{
 if (cm_suspended)
  device_set_wakeup_capable(cm->dev, 1);

 if (!is_batt_present(cm)) {
  dev_emerg(cm->dev, "Battery Pulled Out!\n");
  uevent_notify(cm, default_event_names[CM_EVENT_BATT_OUT]);
 } else {
  uevent_notify(cm, "Battery Reinserted?");
 }
}
