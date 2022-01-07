
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 int HZ ;
 unsigned char I8042_STR_AUXDATA ;
 int dell_rfkill_work ;
 int round_jiffies_relative (int) ;
 int schedule_delayed_work (int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool dell_laptop_i8042_filter(unsigned char data, unsigned char str,
         struct serio *port)
{
 static bool extended;

 if (str & I8042_STR_AUXDATA)
  return 0;

 if (unlikely(data == 0xe0)) {
  extended = 1;
  return 0;
 } else if (unlikely(extended)) {
  switch (data) {
  case 0x8:
   schedule_delayed_work(&dell_rfkill_work,
           round_jiffies_relative(HZ / 4));
   break;
  }
  extended = 0;
 }

 return 0;
}
