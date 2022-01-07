
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct _adapter {int dummy; } ;


 int bMaskDWord ;
 int bitshift (int) ;
 int r8712_bb_reg_read (struct _adapter*,int ) ;
 int r8712_bb_reg_write (struct _adapter*,int ,int) ;

__attribute__((used)) static u8 set_bb_reg(struct _adapter *pAdapter,
       u16 offset,
       u32 bitmask,
       u32 value)
{
 u32 org_value, bit_shift, new_value;

 if (bitmask != bMaskDWord) {
  org_value = r8712_bb_reg_read(pAdapter, offset);
  bit_shift = bitshift(bitmask);
  new_value = (org_value & (~bitmask)) | (value << bit_shift);
 } else {
  new_value = value;
 }
 return r8712_bb_reg_write(pAdapter, offset, new_value);
}
