
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kobj; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int * dev; int telemetry_dev; int punit_dev; int tco_dev; int irq; } ;


 int devm_free_irq (TYPE_2__*,int ,TYPE_1__*) ;
 int intel_ipc_group ;
 TYPE_1__ ipcdev ;
 int platform_device_unregister (int ) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int ipc_plat_remove(struct platform_device *pdev)
{
 sysfs_remove_group(&pdev->dev.kobj, &intel_ipc_group);
 devm_free_irq(&pdev->dev, ipcdev.irq, &ipcdev);
 platform_device_unregister(ipcdev.tco_dev);
 platform_device_unregister(ipcdev.punit_dev);
 platform_device_unregister(ipcdev.telemetry_dev);
 ipcdev.dev = ((void*)0);
 return 0;
}
