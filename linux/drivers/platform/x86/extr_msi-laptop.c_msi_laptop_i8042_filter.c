
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {int dummy; } ;
struct TYPE_2__ {int ec_delay; } ;


 double HZ ;
 unsigned char I8042_STR_AUXDATA ;
 int msi_rfkill_dwork ;
 int msi_rfkill_work ;
 int msi_touchpad_dwork ;
 int msi_touchpad_work ;
 TYPE_1__* quirks ;
 int round_jiffies_relative (double) ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool msi_laptop_i8042_filter(unsigned char data, unsigned char str,
    struct serio *port)
{
 static bool extended;

 if (str & I8042_STR_AUXDATA)
  return 0;


 if (unlikely(data == 0xe0)) {
  extended = 1;
  return 0;
 } else if (unlikely(extended)) {
  extended = 0;
  switch (data) {
  case 0xE4:
   if (quirks->ec_delay) {
    schedule_delayed_work(&msi_touchpad_dwork,
     round_jiffies_relative(0.5 * HZ));
   } else
    schedule_work(&msi_touchpad_work);
   break;
  case 0x54:
  case 0x62:
  case 0x76:
   if (quirks->ec_delay) {
    schedule_delayed_work(&msi_rfkill_dwork,
     round_jiffies_relative(0.5 * HZ));
   } else
    schedule_work(&msi_rfkill_work);
   break;
  }
 }

 return 0;
}
