
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct acpi_device {TYPE_1__ dev; } ;


 int haps_attr_group ;
 int sysfs_remove_group (int *,int *) ;
 int * toshiba_haps ;

__attribute__((used)) static int toshiba_haps_remove(struct acpi_device *device)
{
 sysfs_remove_group(&device->dev.kobj, &haps_attr_group);

 if (toshiba_haps)
  toshiba_haps = ((void*)0);

 return 0;
}
