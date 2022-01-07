
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;



__attribute__((used)) static bool _rtl8812ae_get_integer_from_string(char *str, u8 *pint)
{
 u16 i = 0;
 *pint = 0;

 while (str[i] != '\0') {
  if (str[i] >= '0' && str[i] <= '9') {
   *pint *= 10;
   *pint += (str[i] - '0');
  } else {
   return 0;
  }
  ++i;
 }

 return 1;
}
