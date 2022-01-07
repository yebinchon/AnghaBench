
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct power_supply {TYPE_1__ dev; } ;
struct device {int kobj; } ;


 int sysfs_create_link (int *,int *,char*) ;

int power_supply_powers(struct power_supply *psy, struct device *dev)
{
 return sysfs_create_link(&psy->dev.kobj, &dev->kobj, "powers");
}
