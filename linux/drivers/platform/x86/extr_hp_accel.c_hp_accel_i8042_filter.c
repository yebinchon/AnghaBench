
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;






 unsigned char I8042_STR_AUXDATA ;
 int serio_interrupt (struct serio*,int,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool hp_accel_i8042_filter(unsigned char data, unsigned char str,
      struct serio *port)
{
 static bool extended;

 if (str & I8042_STR_AUXDATA)
  return 0;

 if (data == 0xe0) {
  extended = 1;
  return 1;
 } else if (unlikely(extended)) {
  extended = 0;

  switch (data) {
  case 131:
  case 130:
  case 129:
  case 128:
   return 1;
  default:
   serio_interrupt(port, 0xe0, 0);
   return 0;
  }
 }

 return 0;
}
