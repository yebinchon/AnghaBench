
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



void rtl_fill_dummy(u8 *pfwbuf, u32 *pfwlen)
{
 u32 fwlen = *pfwlen;
 u8 remain = (u8)(fwlen % 4);

 remain = (remain == 0) ? 0 : (4 - remain);

 while (remain > 0) {
  pfwbuf[fwlen] = 0;
  fwlen++;
  remain--;
 }

 *pfwlen = fwlen;
}
