
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axp20x_usb_power {scalar_t__ axp20x_id; } ;


 scalar_t__ AXP221_ID ;

__attribute__((used)) static bool axp20x_usb_vbus_needs_polling(struct axp20x_usb_power *power)
{
 if (power->axp20x_id >= AXP221_ID)
  return 1;

 return 0;
}
