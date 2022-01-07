
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct toshiba_bluetooth_dev {int killswitch; int rfk; } ;
struct acpi_device {int dummy; } ;


 struct toshiba_bluetooth_dev* acpi_driver_data (struct acpi_device*) ;
 int rfkill_set_hw_state (int ,int) ;
 scalar_t__ toshiba_bluetooth_sync_status (struct toshiba_bluetooth_dev*) ;

__attribute__((used)) static void toshiba_bt_rfkill_notify(struct acpi_device *device, u32 event)
{
 struct toshiba_bluetooth_dev *bt_dev = acpi_driver_data(device);

 if (toshiba_bluetooth_sync_status(bt_dev))
  return;

 rfkill_set_hw_state(bt_dev->rfk, !bt_dev->killswitch);
}
