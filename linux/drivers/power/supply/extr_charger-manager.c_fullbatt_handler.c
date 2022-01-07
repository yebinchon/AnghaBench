
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct charger_manager {scalar_t__ fullbatt_vchk_jiffies_at; int dev; int fullbatt_vchk_work; struct charger_desc* desc; } ;
struct charger_desc {int fullbatt_vchkdrop_ms; int fullbatt_vchkdrop_uV; } ;


 size_t CM_EVENT_BATT_FULL ;
 scalar_t__ cm_suspended ;
 int cm_wq ;
 int * default_event_names ;
 int dev_info (int ,char*) ;
 int device_set_wakeup_capable (int ,int) ;
 scalar_t__ jiffies ;
 int mod_delayed_work (int ,int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int uevent_notify (struct charger_manager*,int ) ;

__attribute__((used)) static void fullbatt_handler(struct charger_manager *cm)
{
 struct charger_desc *desc = cm->desc;

 if (!desc->fullbatt_vchkdrop_uV || !desc->fullbatt_vchkdrop_ms)
  goto out;

 if (cm_suspended)
  device_set_wakeup_capable(cm->dev, 1);

 mod_delayed_work(cm_wq, &cm->fullbatt_vchk_work,
    msecs_to_jiffies(desc->fullbatt_vchkdrop_ms));
 cm->fullbatt_vchk_jiffies_at = jiffies + msecs_to_jiffies(
           desc->fullbatt_vchkdrop_ms);

 if (cm->fullbatt_vchk_jiffies_at == 0)
  cm->fullbatt_vchk_jiffies_at = 1;

out:
 dev_info(cm->dev, "EVENT_HANDLE: Battery Fully Charged\n");
 uevent_notify(cm, default_event_names[CM_EVENT_BATT_FULL]);
}
