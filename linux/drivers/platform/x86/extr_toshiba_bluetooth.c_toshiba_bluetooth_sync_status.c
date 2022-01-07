
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toshiba_bluetooth_dev {int killswitch; int plugged; int powered; TYPE_1__* acpi_dev; } ;
struct TYPE_2__ {int handle; } ;


 int BT_KILLSWITCH_MASK ;
 int BT_PLUGGED_MASK ;
 int BT_POWER_MASK ;
 int pr_debug (char*,int,int,int,int) ;
 int pr_err (char*) ;
 int toshiba_bluetooth_status (int ) ;

__attribute__((used)) static int toshiba_bluetooth_sync_status(struct toshiba_bluetooth_dev *bt_dev)
{
 int status;

 status = toshiba_bluetooth_status(bt_dev->acpi_dev->handle);
 if (status < 0) {
  pr_err("Could not sync bluetooth device status\n");
  return status;
 }

 bt_dev->killswitch = (status & BT_KILLSWITCH_MASK) ? 1 : 0;
 bt_dev->plugged = (status & BT_PLUGGED_MASK) ? 1 : 0;
 bt_dev->powered = (status & BT_POWER_MASK) ? 1 : 0;

 pr_debug("Bluetooth status %d killswitch %d plugged %d powered %d\n",
   status, bt_dev->killswitch, bt_dev->plugged, bt_dev->powered);

 return 0;
}
