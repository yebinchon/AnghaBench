
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topstar_laptop {struct acpi_device* device; } ;
struct acpi_device {struct topstar_laptop* driver_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 char* TOPSTAR_LAPTOP_CLASS ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 int dmi_check_system (int ) ;
 int kfree (struct topstar_laptop*) ;
 struct topstar_laptop* kzalloc (int,int ) ;
 scalar_t__ led_workaround ;
 int strcpy (int ,char*) ;
 int topstar_acpi_exit (struct topstar_laptop*) ;
 int topstar_acpi_init (struct topstar_laptop*) ;
 int topstar_dmi_ids ;
 int topstar_input_exit (struct topstar_laptop*) ;
 int topstar_input_init (struct topstar_laptop*) ;
 int topstar_led_init (struct topstar_laptop*) ;
 int topstar_platform_exit (struct topstar_laptop*) ;
 int topstar_platform_init (struct topstar_laptop*) ;

__attribute__((used)) static int topstar_acpi_add(struct acpi_device *device)
{
 struct topstar_laptop *topstar;
 int err;

 dmi_check_system(topstar_dmi_ids);

 topstar = kzalloc(sizeof(struct topstar_laptop), GFP_KERNEL);
 if (!topstar)
  return -ENOMEM;

 strcpy(acpi_device_name(device), "Topstar TPSACPI");
 strcpy(acpi_device_class(device), TOPSTAR_LAPTOP_CLASS);
 device->driver_data = topstar;
 topstar->device = device;

 err = topstar_acpi_init(topstar);
 if (err)
  goto err_free;

 err = topstar_platform_init(topstar);
 if (err)
  goto err_acpi_exit;

 err = topstar_input_init(topstar);
 if (err)
  goto err_platform_exit;

 if (led_workaround) {
  err = topstar_led_init(topstar);
  if (err)
   goto err_input_exit;
 }

 return 0;

err_input_exit:
 topstar_input_exit(topstar);
err_platform_exit:
 topstar_platform_exit(topstar);
err_acpi_exit:
 topstar_acpi_exit(topstar);
err_free:
 kfree(topstar);
 return err;
}
