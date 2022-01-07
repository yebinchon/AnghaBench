
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int phy_CalculateBitShift (int) ;
 int phy_RFSerialRead_8723B (struct adapter*,int ,int) ;

u32 PHY_QueryRFReg_8723B(
 struct adapter *Adapter,
 u8 eRFPath,
 u32 RegAddr,
 u32 BitMask
)
{
 u32 Original_Value, BitShift;





 Original_Value = phy_RFSerialRead_8723B(Adapter, eRFPath, RegAddr);
 BitShift = phy_CalculateBitShift(BitMask);

 return (Original_Value & BitMask) >> BitShift;
}
