
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int id; } ;
struct nvec_power {int notifier; int nvec; int poller; } ;




 int cancel_delayed_work_sync (int *) ;
 int nvec_bat_psy ;
 int nvec_psy ;
 int nvec_unregister_notifier (int ,int *) ;
 struct nvec_power* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int nvec_power_remove(struct platform_device *pdev)
{
 struct nvec_power *power = platform_get_drvdata(pdev);

 cancel_delayed_work_sync(&power->poller);
 nvec_unregister_notifier(power->nvec, &power->notifier);
 switch (pdev->id) {
 case 129:
  power_supply_unregister(nvec_psy);
  break;
 case 128:
  power_supply_unregister(nvec_bat_psy);
 }

 return 0;
}
