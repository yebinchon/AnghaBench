
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct toshiba_acpi_dev {scalar_t__ wwan_rfk; int eco_led; scalar_t__ eco_led_registered; int kbd_led; scalar_t__ kbd_led_registered; int led_dev; scalar_t__ illumination_led_registered; int backlight_dev; scalar_t__ hotkey_dev; int hotkey_work; scalar_t__ ntfy_supported; TYPE_2__* acpi_dev; scalar_t__ sysfs_created; scalar_t__ indio_dev; scalar_t__ accelerometer_supported; int miscdev; } ;
struct acpi_device {int dummy; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 struct toshiba_acpi_dev* acpi_driver_data (struct acpi_device*) ;
 int backlight_device_unregister (int ) ;
 int cancel_work_sync (int *) ;
 int i8042_remove_filter (int ) ;
 int iio_device_free (scalar_t__) ;
 int iio_device_unregister (scalar_t__) ;
 int input_unregister_device (scalar_t__) ;
 int kfree (struct toshiba_acpi_dev*) ;
 int led_classdev_unregister (int *) ;
 int misc_deregister (int *) ;
 int remove_toshiba_proc_entries (struct toshiba_acpi_dev*) ;
 int rfkill_destroy (scalar_t__) ;
 int rfkill_unregister (scalar_t__) ;
 int sysfs_remove_group (int *,int *) ;
 int * toshiba_acpi ;
 int toshiba_acpi_i8042_filter ;
 int toshiba_attr_group ;

__attribute__((used)) static int toshiba_acpi_remove(struct acpi_device *acpi_dev)
{
 struct toshiba_acpi_dev *dev = acpi_driver_data(acpi_dev);

 misc_deregister(&dev->miscdev);

 remove_toshiba_proc_entries(dev);

 if (dev->accelerometer_supported && dev->indio_dev) {
  iio_device_unregister(dev->indio_dev);
  iio_device_free(dev->indio_dev);
 }

 if (dev->sysfs_created)
  sysfs_remove_group(&dev->acpi_dev->dev.kobj,
       &toshiba_attr_group);

 if (dev->ntfy_supported) {
  i8042_remove_filter(toshiba_acpi_i8042_filter);
  cancel_work_sync(&dev->hotkey_work);
 }

 if (dev->hotkey_dev)
  input_unregister_device(dev->hotkey_dev);

 backlight_device_unregister(dev->backlight_dev);

 if (dev->illumination_led_registered)
  led_classdev_unregister(&dev->led_dev);

 if (dev->kbd_led_registered)
  led_classdev_unregister(&dev->kbd_led);

 if (dev->eco_led_registered)
  led_classdev_unregister(&dev->eco_led);

 if (dev->wwan_rfk) {
  rfkill_unregister(dev->wwan_rfk);
  rfkill_destroy(dev->wwan_rfk);
 }

 if (toshiba_acpi)
  toshiba_acpi = ((void*)0);

 kfree(dev);

 return 0;
}
