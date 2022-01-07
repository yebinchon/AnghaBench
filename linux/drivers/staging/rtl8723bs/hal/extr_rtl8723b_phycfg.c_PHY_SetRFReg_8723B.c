
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int bRFRegOffsetMask ;
 int phy_CalculateBitShift (int) ;
 int phy_RFSerialRead_8723B (struct adapter*,int ,int) ;
 int phy_RFSerialWrite_8723B (struct adapter*,int ,int,int) ;

void PHY_SetRFReg_8723B(
 struct adapter *Adapter,
 u8 eRFPath,
 u32 RegAddr,
 u32 BitMask,
 u32 Data
)
{
 u32 Original_Value, BitShift;






 if (BitMask != bRFRegOffsetMask) {
  Original_Value = phy_RFSerialRead_8723B(Adapter, eRFPath, RegAddr);
  BitShift = phy_CalculateBitShift(BitMask);
  Data = ((Original_Value & (~BitMask)) | (Data<<BitShift));
 }

 phy_RFSerialWrite_8723B(Adapter, eRFPath, RegAddr, Data);
}
