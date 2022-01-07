
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct power_supply {int removing; TYPE_1__ dev; int deferred_register_work; int changed_work; int use_cnt; } ;


 int WARN_ON (int ) ;
 int atomic_dec_return (int *) ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 int device_unregister (TYPE_1__*) ;
 int power_supply_remove_hwmon_sysfs (struct power_supply*) ;
 int power_supply_remove_triggers (struct power_supply*) ;
 int psy_unregister_cooler (struct power_supply*) ;
 int psy_unregister_thermal (struct power_supply*) ;
 int sysfs_remove_link (int *,char*) ;

void power_supply_unregister(struct power_supply *psy)
{
 WARN_ON(atomic_dec_return(&psy->use_cnt));
 psy->removing = 1;
 cancel_work_sync(&psy->changed_work);
 cancel_delayed_work_sync(&psy->deferred_register_work);
 sysfs_remove_link(&psy->dev.kobj, "powers");
 power_supply_remove_hwmon_sysfs(psy);
 power_supply_remove_triggers(psy);
 psy_unregister_cooler(psy);
 psy_unregister_thermal(psy);
 device_init_wakeup(&psy->dev, 0);
 device_unregister(&psy->dev);
}
