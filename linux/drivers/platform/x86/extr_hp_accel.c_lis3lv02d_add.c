
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct acpi_device {int dev; TYPE_1__* driver_data; } ;
struct TYPE_9__ {int work; int led_classdev; } ;
struct TYPE_8__ {scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
struct TYPE_7__ {TYPE_4__ ac; int write; int read; int init; struct acpi_device* bus_priv; } ;


 int ACPI_MDPS_CLASS ;
 int DRIVER_NAME ;
 int EINVAL ;
 int INIT_WORK (int *,int ) ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 int delayed_set_status_worker ;
 int dev_name (int *) ;
 scalar_t__ dmi_check_system (int ) ;
 int flush_work (int *) ;
 int hp_accel_i8042_filter ;
 TYPE_6__ hpled_led ;
 int i8042_install_filter (int ) ;
 int led_classdev_register (int *,int *) ;
 TYPE_1__ lis3_dev ;
 int lis3lv02d_acpi_init ;
 int lis3lv02d_acpi_read ;
 int lis3lv02d_acpi_write ;
 TYPE_4__ lis3lv02d_axis_normal ;
 int lis3lv02d_dmi_ids ;
 int lis3lv02d_enum_resources (struct acpi_device*) ;
 int lis3lv02d_init_device (TYPE_1__*) ;
 int lis3lv02d_joystick_disable (TYPE_1__*) ;
 int lis3lv02d_poweroff (TYPE_1__*) ;
 int pr_info (char*,...) ;
 int strcpy (int ,int ) ;
 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static int lis3lv02d_add(struct acpi_device *device)
{
 int ret;

 if (!device)
  return -EINVAL;

 lis3_dev.bus_priv = device;
 lis3_dev.init = lis3lv02d_acpi_init;
 lis3_dev.read = lis3lv02d_acpi_read;
 lis3_dev.write = lis3lv02d_acpi_write;
 strcpy(acpi_device_name(device), DRIVER_NAME);
 strcpy(acpi_device_class(device), ACPI_MDPS_CLASS);
 device->driver_data = &lis3_dev;


 lis3lv02d_enum_resources(device);


 if (lis3_dev.ac.x && lis3_dev.ac.y && lis3_dev.ac.z) {
  pr_info("Using custom axes %d,%d,%d\n",
   lis3_dev.ac.x, lis3_dev.ac.y, lis3_dev.ac.z);
 } else if (dmi_check_system(lis3lv02d_dmi_ids) == 0) {
  pr_info("laptop model unknown, using default axes configuration\n");
  lis3_dev.ac = lis3lv02d_axis_normal;
 }


 ret = lis3lv02d_init_device(&lis3_dev);
 if (ret)
  return ret;



 if (strstr(dev_name(&device->dev), "HPQ6000"))
  i8042_install_filter(hp_accel_i8042_filter);

 INIT_WORK(&hpled_led.work, delayed_set_status_worker);
 ret = led_classdev_register(((void*)0), &hpled_led.led_classdev);
 if (ret) {
  lis3lv02d_joystick_disable(&lis3_dev);
  lis3lv02d_poweroff(&lis3_dev);
  flush_work(&hpled_led.work);
  return ret;
 }

 return ret;
}
