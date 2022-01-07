
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int phy_CalculateBitShift (int) ;
 int rtw_read32 (struct adapter*,int) ;

u32 PHY_QueryBBReg_8723B(struct adapter *Adapter, u32 RegAddr, u32 BitMask)
{
 u32 OriginalValue, BitShift;







 OriginalValue = rtw_read32(Adapter, RegAddr);
 BitShift = phy_CalculateBitShift(BitMask);

 return (OriginalValue & BitMask) >> BitShift;

}
