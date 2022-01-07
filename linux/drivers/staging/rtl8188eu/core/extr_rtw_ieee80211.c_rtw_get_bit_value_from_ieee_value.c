
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const u8 ;


 int BIT (int) ;

int rtw_get_bit_value_from_ieee_value(u8 val)
{
 static const unsigned char dot11_rate_table[] = {
  2, 4, 11, 22, 12, 18, 24, 36, 48,
  72, 96, 108, 0};
 int i = 0;

 while (dot11_rate_table[i] != 0) {
  if (dot11_rate_table[i] == val)
   return BIT(i);
  i++;
 }
 return 0;
}
