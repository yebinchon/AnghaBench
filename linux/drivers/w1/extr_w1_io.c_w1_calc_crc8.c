
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t* w1_crc8_table ;

u8 w1_calc_crc8(u8 * data, int len)
{
 u8 crc = 0;

 while (len--)
  crc = w1_crc8_table[crc ^ *data++];

 return crc;
}
