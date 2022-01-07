
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct charger_manager {int fullbatt_vchk_work; } ;


 int EBUSY ;
 int cancel_delayed_work (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int cm_monitor_work ;
 scalar_t__ cm_need_to_awake () ;
 scalar_t__ cm_setup_timer () ;
 int cm_suspended ;
 scalar_t__ cm_timer_set ;
 struct charger_manager* dev_get_drvdata (struct device*) ;
 int setup_polling ;

__attribute__((used)) static int cm_suspend_prepare(struct device *dev)
{
 struct charger_manager *cm = dev_get_drvdata(dev);

 if (cm_need_to_awake())
  return -EBUSY;

 if (!cm_suspended)
  cm_suspended = 1;

 cm_timer_set = cm_setup_timer();

 if (cm_timer_set) {
  cancel_work_sync(&setup_polling);
  cancel_delayed_work_sync(&cm_monitor_work);
  cancel_delayed_work(&cm->fullbatt_vchk_work);
 }

 return 0;
}
