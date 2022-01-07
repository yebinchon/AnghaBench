
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct micro_battery {int wq; int update; } ;


 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int micro_ac_power ;
 int micro_batt_power ;
 struct micro_battery* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int micro_batt_remove(struct platform_device *pdev)

{
 struct micro_battery *mb = platform_get_drvdata(pdev);

 power_supply_unregister(micro_ac_power);
 power_supply_unregister(micro_batt_power);
 cancel_delayed_work_sync(&mb->update);
 destroy_workqueue(mb->wq);

 return 0;
}
