
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s8 ;



__attribute__((used)) static void _phy_convert_txpower_dbm_to_relative_value(u32 *data, u8 start,
      u8 end, u8 base_val)
{
 s8 i = 0;
 u8 temp_value = 0;
 u32 temp_data = 0;

 for (i = 3; i >= 0; --i) {
  if (i >= start && i <= end) {

   temp_value = (u8)(*data >> (i * 8)) & 0xF;
   temp_value += ((u8)((*data >> (i*8 + 4)) & 0xF)) * 10;


   temp_value = (temp_value > base_val) ?
         temp_value - base_val :
         base_val - temp_value;
  } else {
   temp_value = (u8)(*data >> (i * 8)) & 0xFF;
  }
  temp_data <<= 8;
  temp_data |= temp_value;
 }
 *data = temp_data;
}
