
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshiba_bluetooth_dev {int killswitch; int rfk; } ;
struct rfkill {int dummy; } ;


 int rfkill_set_hw_state (int ,int) ;
 scalar_t__ toshiba_bluetooth_sync_status (struct toshiba_bluetooth_dev*) ;

__attribute__((used)) static void bt_rfkill_poll(struct rfkill *rfkill, void *data)
{
 struct toshiba_bluetooth_dev *bt_dev = data;

 if (toshiba_bluetooth_sync_status(bt_dev))
  return;
 rfkill_set_hw_state(bt_dev->rfk, !bt_dev->killswitch);
}
