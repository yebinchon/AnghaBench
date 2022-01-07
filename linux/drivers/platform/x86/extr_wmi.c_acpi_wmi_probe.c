
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct device {int dummy; } ;
struct acpi_device {int handle; } ;
typedef int acpi_status ;


 int ACPI_ADR_SPACE_EC ;
 struct acpi_device* ACPI_COMPANION (int *) ;
 int ACPI_DEVICE_NOTIFY ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct device*) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct device*) ;
 int acpi_install_address_space_handler (int ,int ,int *,int *,int *) ;
 int acpi_install_notify_handler (int ,int ,int ,int *) ;
 int acpi_remove_address_space_handler (int ,int ,int *) ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int acpi_wmi_ec_space_handler ;
 int acpi_wmi_notify_handler ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int dev_set_drvdata (int *,struct device*) ;
 struct device* device_create (int *,int *,int ,int *,char*,int ) ;
 int device_destroy (int *,int ) ;
 int parse_wdg (struct device*,struct acpi_device*) ;
 int pr_err (char*) ;
 int wmi_bus_class ;

__attribute__((used)) static int acpi_wmi_probe(struct platform_device *device)
{
 struct acpi_device *acpi_device;
 struct device *wmi_bus_dev;
 acpi_status status;
 int error;

 acpi_device = ACPI_COMPANION(&device->dev);
 if (!acpi_device) {
  dev_err(&device->dev, "ACPI companion is missing\n");
  return -ENODEV;
 }

 status = acpi_install_address_space_handler(acpi_device->handle,
          ACPI_ADR_SPACE_EC,
          &acpi_wmi_ec_space_handler,
          ((void*)0), ((void*)0));
 if (ACPI_FAILURE(status)) {
  dev_err(&device->dev, "Error installing EC region handler\n");
  return -ENODEV;
 }

 status = acpi_install_notify_handler(acpi_device->handle,
          ACPI_DEVICE_NOTIFY,
          acpi_wmi_notify_handler,
          ((void*)0));
 if (ACPI_FAILURE(status)) {
  dev_err(&device->dev, "Error installing notify handler\n");
  error = -ENODEV;
  goto err_remove_ec_handler;
 }

 wmi_bus_dev = device_create(&wmi_bus_class, &device->dev, MKDEV(0, 0),
        ((void*)0), "wmi_bus-%s", dev_name(&device->dev));
 if (IS_ERR(wmi_bus_dev)) {
  error = PTR_ERR(wmi_bus_dev);
  goto err_remove_notify_handler;
 }
 dev_set_drvdata(&device->dev, wmi_bus_dev);

 error = parse_wdg(wmi_bus_dev, acpi_device);
 if (error) {
  pr_err("Failed to parse WDG method\n");
  goto err_remove_busdev;
 }

 return 0;

err_remove_busdev:
 device_destroy(&wmi_bus_class, MKDEV(0, 0));

err_remove_notify_handler:
 acpi_remove_notify_handler(acpi_device->handle, ACPI_DEVICE_NOTIFY,
       acpi_wmi_notify_handler);

err_remove_ec_handler:
 acpi_remove_address_space_handler(acpi_device->handle,
       ACPI_ADR_SPACE_EC,
       &acpi_wmi_ec_space_handler);

 return error;
}
