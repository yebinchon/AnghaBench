
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {struct ds2760_device_info* family_data; } ;
struct ds2760_device_info {int bat; int monitor_wqueue; int set_charged_work; int monitor_work; int pm_notifier; } ;


 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int power_supply_unregister (int ) ;
 int unregister_pm_notifier (int *) ;

__attribute__((used)) static void w1_ds2760_remove_slave(struct w1_slave *sl)
{
 struct ds2760_device_info *di = sl->family_data;

 unregister_pm_notifier(&di->pm_notifier);
 cancel_delayed_work_sync(&di->monitor_work);
 cancel_delayed_work_sync(&di->set_charged_work);
 destroy_workqueue(di->monitor_wqueue);
 power_supply_unregister(di->bat);
}
