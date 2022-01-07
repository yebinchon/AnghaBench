
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct power_supply {int dev; } ;


 int devres_release_group (int *,int ) ;
 int power_supply_add_hwmon_sysfs ;

void power_supply_remove_hwmon_sysfs(struct power_supply *psy)
{
 devres_release_group(&psy->dev, power_supply_add_hwmon_sysfs);
}
