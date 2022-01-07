
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {struct platform_device* pdev; } ;


 int driver_name ;
 TYPE_2__ platform_bus ;
 int platform_device_unregister (struct platform_device*) ;
 int sysfs_remove_link (int *,int ) ;
 int vhci_num_controllers ;
 TYPE_1__* vhcis ;

__attribute__((used)) static void del_platform_devices(void)
{
 struct platform_device *pdev;
 int i;

 for (i = 0; i < vhci_num_controllers; i++) {
  pdev = vhcis[i].pdev;
  if (pdev != ((void*)0))
   platform_device_unregister(pdev);
  vhcis[i].pdev = ((void*)0);
 }
 sysfs_remove_link(&platform_bus.kobj, driver_name);
}
