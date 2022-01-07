
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int s32 ;




u32 calc_checksum_4byte(void *data, s32 len, u32 chksum, s32 type)
{
 int i;
 u8 *c = (u8 *)data;

 switch (type) {
 case 128:
  for (i = 0; i < len; i++, c++) {
   if ((i == 106) || (i == 107) || (i == 112))
    continue;
   chksum = (((chksum & 1) << 31) |
      ((chksum & 0xFFFFFFFE) >> 1)) + (u32)*c;
  }
  break;
 default
   :
  for (i = 0; i < len; i++, c++)
   chksum = (((chksum & 1) << 31) |
      ((chksum & 0xFFFFFFFE) >> 1)) + (u32)*c;
 }

 return chksum;
}
