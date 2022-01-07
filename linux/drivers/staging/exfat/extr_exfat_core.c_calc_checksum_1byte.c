
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s32 ;



u8 calc_checksum_1byte(void *data, s32 len, u8 chksum)
{
 int i;
 u8 *c = (u8 *)data;

 for (i = 0; i < len; i++, c++)
  chksum = (((chksum & 1) << 7) | ((chksum & 0xFE) >> 1)) + *c;

 return chksum;
}
