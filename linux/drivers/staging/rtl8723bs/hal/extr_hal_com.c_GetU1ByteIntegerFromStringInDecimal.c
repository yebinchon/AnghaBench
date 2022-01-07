
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;



bool GetU1ByteIntegerFromStringInDecimal(char *Str, u8 *pInt)
{
 u16 i = 0;
 *pInt = 0;

 while (Str[i] != '\0') {
  if (Str[i] >= '0' && Str[i] <= '9') {
   *pInt *= 10;
   *pInt += (Str[i] - '0');
  } else
   return 0;

  ++i;
 }

 return 1;
}
