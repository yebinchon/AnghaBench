
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshiba_bluetooth_dev {int rfk; int killswitch; struct acpi_device* acpi_dev; } ;
struct acpi_device {int dev; struct toshiba_bluetooth_dev* driver_data; int handle; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RFKILL_TYPE_BLUETOOTH ;
 int dev_set_drvdata (int *,struct toshiba_bluetooth_dev*) ;
 int kfree (struct toshiba_bluetooth_dev*) ;
 struct toshiba_bluetooth_dev* kzalloc (int,int ) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int rfk_ops ;
 int rfkill_alloc (char*,int *,int ,int *,struct toshiba_bluetooth_dev*) ;
 int rfkill_destroy (int ) ;
 int rfkill_register (int ) ;
 int rfkill_set_hw_state (int ,int) ;
 int toshiba_bluetooth_present (int ) ;
 int toshiba_bluetooth_sync_status (struct toshiba_bluetooth_dev*) ;

__attribute__((used)) static int toshiba_bt_rfkill_add(struct acpi_device *device)
{
 struct toshiba_bluetooth_dev *bt_dev;
 int result;

 result = toshiba_bluetooth_present(device->handle);
 if (result)
  return result;

 pr_info("Toshiba ACPI Bluetooth device driver\n");

 bt_dev = kzalloc(sizeof(*bt_dev), GFP_KERNEL);
 if (!bt_dev)
  return -ENOMEM;
 bt_dev->acpi_dev = device;
 device->driver_data = bt_dev;
 dev_set_drvdata(&device->dev, bt_dev);

 result = toshiba_bluetooth_sync_status(bt_dev);
 if (result) {
  kfree(bt_dev);
  return result;
 }

 bt_dev->rfk = rfkill_alloc("Toshiba Bluetooth",
       &device->dev,
       RFKILL_TYPE_BLUETOOTH,
       &rfk_ops,
       bt_dev);
 if (!bt_dev->rfk) {
  pr_err("Unable to allocate rfkill device\n");
  kfree(bt_dev);
  return -ENOMEM;
 }

 rfkill_set_hw_state(bt_dev->rfk, !bt_dev->killswitch);

 result = rfkill_register(bt_dev->rfk);
 if (result) {
  pr_err("Unable to register rfkill device\n");
  rfkill_destroy(bt_dev->rfk);
  kfree(bt_dev);
 }

 return result;
}
