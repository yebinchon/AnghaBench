
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int bMaskDWord ;
 int cal_bit_shift (int) ;
 int usb_read32 (struct adapter*,int) ;
 int usb_write32 (struct adapter*,int,int) ;

void phy_set_bb_reg(struct adapter *adapt, u32 regaddr, u32 bitmask, u32 data)
{
 u32 original_value, bit_shift;

 if (bitmask != bMaskDWord) {
  original_value = usb_read32(adapt, regaddr);
  bit_shift = cal_bit_shift(bitmask);
  data = (original_value & (~bitmask)) | (data << bit_shift);
 }

 usb_write32(adapt, regaddr, data);
}
