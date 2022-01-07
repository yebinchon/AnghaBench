
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct _adapter {int dummy; } ;


 int bitshift (int) ;
 int r8712_bb_reg_read (struct _adapter*,int ) ;

__attribute__((used)) static u32 get_bb_reg(struct _adapter *pAdapter, u16 offset, u32 bitmask)
{
 u32 org_value, bit_shift;

 org_value = r8712_bb_reg_read(pAdapter, offset);
 bit_shift = bitshift(bitmask);
 return (org_value & bitmask) >> bit_shift;
}
