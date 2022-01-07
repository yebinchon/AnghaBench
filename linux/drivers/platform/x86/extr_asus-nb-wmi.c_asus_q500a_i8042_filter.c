
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 unsigned char I8042_STR_AUXDATA ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool asus_q500a_i8042_filter(unsigned char data, unsigned char str,
         struct serio *port)
{
 static bool extended;
 bool ret = 0;

 if (str & I8042_STR_AUXDATA)
  return 0;

 if (unlikely(data == 0xe1)) {
  extended = 1;
  ret = 1;
 } else if (unlikely(extended)) {
  extended = 0;
  ret = 1;
 }

 return ret;
}
