
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct charger_manager {TYPE_1__* desc; int dev; } ;
typedef enum cm_event_types { ____Placeholder_cm_event_types } cm_event_types ;
struct TYPE_2__ {scalar_t__ polling_interval_ms; } ;


 scalar_t__ cm_suspended ;
 int * default_event_names ;
 int device_set_wakeup_capable (int ,int) ;
 scalar_t__ is_polling_required (struct charger_manager*) ;
 int schedule_work (int *) ;
 int setup_polling ;
 int uevent_notify (struct charger_manager*,int ) ;

__attribute__((used)) static void misc_event_handler(struct charger_manager *cm,
   enum cm_event_types type)
{
 if (cm_suspended)
  device_set_wakeup_capable(cm->dev, 1);

 if (is_polling_required(cm) && cm->desc->polling_interval_ms)
  schedule_work(&setup_polling);
 uevent_notify(cm, default_event_names[type]);
}
