
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s8 ;



__attribute__((used)) static void _phy_convert_txpower_dbm_to_relative_value(u32 *data, u8 start,
             u8 end, u8 base)
{
 s8 i = 0;
 u8 tmp = 0;
 u32 temp_data = 0;

 for (i = 3; i >= 0; --i) {
  if (i >= start && i <= end) {

   tmp = (u8)(*data >> (i * 8)) & 0xF;
   tmp += ((u8)((*data >> (i * 8 + 4)) & 0xF)) * 10;


   tmp = (tmp > base) ? tmp - base : base - tmp;
  } else {
   tmp = (u8)(*data >> (i * 8)) & 0xFF;
  }
  temp_data <<= 8;
  temp_data |= tmp;
 }
 *data = temp_data;
}
