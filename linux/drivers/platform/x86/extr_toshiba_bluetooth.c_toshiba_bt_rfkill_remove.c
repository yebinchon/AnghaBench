
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshiba_bluetooth_dev {scalar_t__ rfk; } ;
struct acpi_device {int handle; } ;


 struct toshiba_bluetooth_dev* acpi_driver_data (struct acpi_device*) ;
 int kfree (struct toshiba_bluetooth_dev*) ;
 int rfkill_destroy (scalar_t__) ;
 int rfkill_unregister (scalar_t__) ;
 int toshiba_bluetooth_disable (int ) ;

__attribute__((used)) static int toshiba_bt_rfkill_remove(struct acpi_device *device)
{
 struct toshiba_bluetooth_dev *bt_dev = acpi_driver_data(device);


 if (bt_dev->rfk) {
  rfkill_unregister(bt_dev->rfk);
  rfkill_destroy(bt_dev->rfk);
 }

 kfree(bt_dev);

 return toshiba_bluetooth_disable(device->handle);
}
