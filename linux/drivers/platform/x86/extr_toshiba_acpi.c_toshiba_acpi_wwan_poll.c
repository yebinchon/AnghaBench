
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshiba_acpi_dev {int killswitch; int wwan_rfk; } ;
struct rfkill {int dummy; } ;


 int rfkill_set_hw_state (int ,int) ;
 scalar_t__ toshiba_wireless_status (struct toshiba_acpi_dev*) ;

__attribute__((used)) static void toshiba_acpi_wwan_poll(struct rfkill *rfkill, void *data)
{
 struct toshiba_acpi_dev *dev = data;

 if (toshiba_wireless_status(dev))
  return;

 rfkill_set_hw_state(dev->wwan_rfk, !dev->killswitch);
}
