
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hal_com_data {struct bb_register_def* PHYRegDef; } ;
struct bb_register_def {int rf3wireOffset; } ;
struct adapter {int dummy; } ;
typedef enum RF_PATH { ____Placeholder_RF_PATH } RF_PATH ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int PHY_SetBBReg (struct adapter*,int ,int ,int) ;
 int bMaskDWord ;

__attribute__((used)) static void phy_RFSerialWrite_8723B(
 struct adapter *Adapter,
 enum RF_PATH eRFPath,
 u32 Offset,
 u32 Data
)
{
 u32 DataAndAddr = 0;
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 struct bb_register_def *pPhyReg = &pHalData->PHYRegDef[eRFPath];
 u32 NewOffset;

 Offset &= 0xff;




 NewOffset = Offset;





 DataAndAddr = ((NewOffset<<20) | (Data&0x000fffff)) & 0x0fffffff;




 PHY_SetBBReg(Adapter, pPhyReg->rf3wireOffset, bMaskDWord, DataAndAddr);


}
