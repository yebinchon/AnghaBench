
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toshiba_bluetooth_dev {TYPE_1__* acpi_dev; int killswitch; } ;
struct TYPE_2__ {int handle; } ;


 int toshiba_bluetooth_disable (int ) ;
 int toshiba_bluetooth_enable (int ) ;
 int toshiba_bluetooth_sync_status (struct toshiba_bluetooth_dev*) ;

__attribute__((used)) static int bt_rfkill_set_block(void *data, bool blocked)
{
 struct toshiba_bluetooth_dev *bt_dev = data;
 int ret;

 ret = toshiba_bluetooth_sync_status(bt_dev);
 if (ret)
  return ret;

 if (!bt_dev->killswitch)
  return 0;

 if (blocked)
  ret = toshiba_bluetooth_disable(bt_dev->acpi_dev->handle);
 else
  ret = toshiba_bluetooth_enable(bt_dev->acpi_dev->handle);

 return ret;
}
