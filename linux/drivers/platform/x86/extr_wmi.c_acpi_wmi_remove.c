
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct acpi_device {int handle; } ;


 int ACPI_ADR_SPACE_EC ;
 struct acpi_device* ACPI_COMPANION (int *) ;
 int ACPI_DEVICE_NOTIFY ;
 int MKDEV (int ,int ) ;
 int acpi_remove_address_space_handler (int ,int ,int *) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int acpi_wmi_ec_space_handler ;
 int acpi_wmi_notify_handler ;
 int device_destroy (int *,int ) ;
 int wmi_bus_class ;
 int wmi_free_devices (struct acpi_device*) ;

__attribute__((used)) static int acpi_wmi_remove(struct platform_device *device)
{
 struct acpi_device *acpi_device = ACPI_COMPANION(&device->dev);

 acpi_remove_notify_handler(acpi_device->handle, ACPI_DEVICE_NOTIFY,
       acpi_wmi_notify_handler);
 acpi_remove_address_space_handler(acpi_device->handle,
    ACPI_ADR_SPACE_EC, &acpi_wmi_ec_space_handler);
 wmi_free_devices(acpi_device);
 device_destroy(&wmi_bus_class, MKDEV(0, 0));

 return 0;
}
