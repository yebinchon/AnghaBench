
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
typedef int acpi_handle ;


 int ACPI_DEVICE_NOTIFY ;
 int ACPI_HANDLE (int *) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int device_init_wakeup (int *,int) ;
 int notify_handler ;

__attribute__((used)) static int intel_vbtn_remove(struct platform_device *device)
{
 acpi_handle handle = ACPI_HANDLE(&device->dev);

 device_init_wakeup(&device->dev, 0);
 acpi_remove_notify_handler(handle, ACPI_DEVICE_NOTIFY, notify_handler);





 return 0;
}
