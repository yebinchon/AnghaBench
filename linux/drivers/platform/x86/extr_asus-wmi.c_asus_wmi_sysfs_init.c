
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int platform_attribute_group ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int asus_wmi_sysfs_init(struct platform_device *device)
{
 return sysfs_create_group(&device->dev.kobj, &platform_attribute_group);
}
