
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int s32 ;




u16 calc_checksum_2byte(void *data, s32 len, u16 chksum, s32 type)
{
 int i;
 u8 *c = (u8 *)data;

 switch (type) {
 case 128:
  for (i = 0; i < len; i++, c++) {
   if ((i == 2) || (i == 3))
    continue;
   chksum = (((chksum & 1) << 15) |
      ((chksum & 0xFFFE) >> 1)) + (u16)*c;
  }
  break;
 default
   :
  for (i = 0; i < len; i++, c++)
   chksum = (((chksum & 1) << 15) |
      ((chksum & 0xFFFE) >> 1)) + (u16)*c;
 }

 return chksum;
}
