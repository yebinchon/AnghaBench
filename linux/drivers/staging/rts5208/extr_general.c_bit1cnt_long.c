
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



int bit1cnt_long(u32 data)
{
 int i, cnt = 0;

 for (i = 0; i < 32; i++) {
  if (data & 0x01)
   cnt++;
  data >>= 1;
 }
 return cnt;
}
