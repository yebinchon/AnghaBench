
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int bMaskDWord ;
 int phy_CalculateBitShift (int) ;
 int rtw_read32 (struct adapter*,int) ;
 int rtw_write32 (struct adapter*,int,int) ;

void PHY_SetBBReg_8723B(
 struct adapter *Adapter,
 u32 RegAddr,
 u32 BitMask,
 u32 Data
)
{

 u32 OriginalValue, BitShift;







 if (BitMask != bMaskDWord) {
  OriginalValue = rtw_read32(Adapter, RegAddr);
  BitShift = phy_CalculateBitShift(BitMask);
  Data = ((OriginalValue & (~BitMask)) | ((Data << BitShift) & BitMask));
 }

 rtw_write32(Adapter, RegAddr, Data);

}
