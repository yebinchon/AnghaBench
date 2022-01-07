
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_status ;


 int ACPI_DEVICE_NOTIFY ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_PROCESSOR_AGGREGATOR_CLASS ;
 int ACPI_PROCESSOR_AGGREGATOR_DEVICE_NAME ;
 int ENODEV ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 int acpi_install_notify_handler (int ,int ,int ,struct acpi_device*) ;
 int acpi_pad_notify ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int acpi_pad_add(struct acpi_device *device)
{
 acpi_status status;

 strcpy(acpi_device_name(device), ACPI_PROCESSOR_AGGREGATOR_DEVICE_NAME);
 strcpy(acpi_device_class(device), ACPI_PROCESSOR_AGGREGATOR_CLASS);

 status = acpi_install_notify_handler(device->handle,
  ACPI_DEVICE_NOTIFY, acpi_pad_notify, device);
 if (ACPI_FAILURE(status))
  return -ENODEV;

 return 0;
}
