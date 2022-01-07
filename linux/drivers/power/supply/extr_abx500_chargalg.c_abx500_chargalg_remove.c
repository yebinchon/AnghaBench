
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct abx500_chargalg {int chargalg_psy; int chargalg_wq; int chargalg_work; int chargalg_wd_work; int chargalg_periodic_work; int maintenance_timer; int safety_timer; } ;


 int abx500_chargalg_sysfs_exit (struct abx500_chargalg*) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int hrtimer_cancel (int *) ;
 struct abx500_chargalg* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int abx500_chargalg_remove(struct platform_device *pdev)
{
 struct abx500_chargalg *di = platform_get_drvdata(pdev);


 abx500_chargalg_sysfs_exit(di);

 hrtimer_cancel(&di->safety_timer);
 hrtimer_cancel(&di->maintenance_timer);

 cancel_delayed_work_sync(&di->chargalg_periodic_work);
 cancel_delayed_work_sync(&di->chargalg_wd_work);
 cancel_work_sync(&di->chargalg_work);


 destroy_workqueue(di->chargalg_wq);

 power_supply_unregister(di->chargalg_psy);

 return 0;
}
