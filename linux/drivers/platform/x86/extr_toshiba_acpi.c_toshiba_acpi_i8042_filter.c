
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct serio {int dummy; } ;
struct TYPE_2__ {int hotkey_work; } ;


 unsigned char I8042_STR_AUXDATA ;
 unsigned char TOS1900_FN_SCAN ;
 int schedule_work (int *) ;
 TYPE_1__* toshiba_acpi ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool toshiba_acpi_i8042_filter(unsigned char data, unsigned char str,
          struct serio *port)
{
 if (str & I8042_STR_AUXDATA)
  return 0;

 if (unlikely(data == 0xe0))
  return 0;

 if ((data & 0x7f) == TOS1900_FN_SCAN) {
  schedule_work(&toshiba_acpi->hotkey_work);
  return 1;
 }

 return 0;
}
