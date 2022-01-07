
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int sony_pic_call1 (int) ;

__attribute__((used)) static int type3_handle_irq(const u8 data_mask, const u8 ev)
{







 if (data_mask == 0x31) {
  if (ev == 0x5c || ev == 0x5f)
   sony_pic_call1(0xA0);
  else if (ev == 0x61)
   sony_pic_call1(0xB3);
  return 0;
 }
 return 1;
}
