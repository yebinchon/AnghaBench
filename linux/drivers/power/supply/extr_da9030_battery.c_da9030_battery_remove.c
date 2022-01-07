
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct da9030_charger {int psy; int work; int nb; int master; } ;


 int DA9030_EVENT_CHDET ;
 int DA9030_EVENT_CHIOVER ;
 int DA9030_EVENT_TBAT ;
 int DA9030_EVENT_VBATMON ;
 int cancel_delayed_work_sync (int *) ;
 int da9030_bat_remove_debugfs (struct da9030_charger*) ;
 int da9030_set_charge (struct da9030_charger*,int ) ;
 int da903x_unregister_notifier (int ,int *,int) ;
 struct da9030_charger* platform_get_drvdata (struct platform_device*) ;
 int power_supply_unregister (int ) ;

__attribute__((used)) static int da9030_battery_remove(struct platform_device *dev)
{
 struct da9030_charger *charger = platform_get_drvdata(dev);

 da9030_bat_remove_debugfs(charger);

 da903x_unregister_notifier(charger->master, &charger->nb,
       DA9030_EVENT_CHDET | DA9030_EVENT_VBATMON |
       DA9030_EVENT_CHIOVER | DA9030_EVENT_TBAT);
 cancel_delayed_work_sync(&charger->work);
 da9030_set_charge(charger, 0);
 power_supply_unregister(charger->psy);

 return 0;
}
