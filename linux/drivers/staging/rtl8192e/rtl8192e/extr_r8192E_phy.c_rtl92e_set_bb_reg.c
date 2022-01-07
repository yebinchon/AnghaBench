
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int _rtl92e_calculate_bit_shift (int) ;
 int bMaskDWord ;
 int rtl92e_readl (struct net_device*,int) ;
 int rtl92e_writel (struct net_device*,int,int) ;

void rtl92e_set_bb_reg(struct net_device *dev, u32 dwRegAddr, u32 dwBitMask,
         u32 dwData)
{

 u32 OriginalValue, BitShift, NewValue;

 if (dwBitMask != bMaskDWord) {
  OriginalValue = rtl92e_readl(dev, dwRegAddr);
  BitShift = _rtl92e_calculate_bit_shift(dwBitMask);
  NewValue = (OriginalValue & ~dwBitMask) | (dwData << BitShift);
  rtl92e_writel(dev, dwRegAddr, NewValue);
 } else
  rtl92e_writel(dev, dwRegAddr, dwData);
}
