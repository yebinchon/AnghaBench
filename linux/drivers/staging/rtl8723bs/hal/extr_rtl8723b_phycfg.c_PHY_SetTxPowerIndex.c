
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int DBG_871X (char*) ;
 scalar_t__ ODM_RF_PATH_A ;
 scalar_t__ ODM_RF_PATH_B ;
 int PHY_SetBBReg (struct adapter*,int ,int ,int ) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _module_hal_init_c_ ;
 int bMaskByte0 ;
 int bMaskByte1 ;
 int bMaskByte2 ;
 int bMaskByte3 ;
 int rTxAGC_A_CCK1_Mcs32 ;
 int rTxAGC_A_Mcs03_Mcs00 ;
 int rTxAGC_A_Mcs07_Mcs04 ;
 int rTxAGC_A_Rate18_06 ;
 int rTxAGC_A_Rate54_24 ;
 int rTxAGC_B_CCK11_A_CCK2_11 ;

void PHY_SetTxPowerIndex(
 struct adapter *Adapter,
 u32 PowerIndex,
 u8 RFPath,
 u8 Rate
)
{
 if (RFPath == ODM_RF_PATH_A || RFPath == ODM_RF_PATH_B) {
  switch (Rate) {
  case 144:
   PHY_SetBBReg(Adapter, rTxAGC_A_CCK1_Mcs32, bMaskByte1, PowerIndex);
   break;
  case 142:
   PHY_SetBBReg(Adapter, rTxAGC_B_CCK11_A_CCK2_11, bMaskByte1, PowerIndex);
   break;
  case 138:
   PHY_SetBBReg(Adapter, rTxAGC_B_CCK11_A_CCK2_11, bMaskByte2, PowerIndex);
   break;
  case 147:
   PHY_SetBBReg(Adapter, rTxAGC_B_CCK11_A_CCK2_11, bMaskByte3, PowerIndex);
   break;

  case 137:
   PHY_SetBBReg(Adapter, rTxAGC_A_Rate18_06, bMaskByte0, PowerIndex);
   break;
  case 136:
   PHY_SetBBReg(Adapter, rTxAGC_A_Rate18_06, bMaskByte1, PowerIndex);
   break;
  case 146:
   PHY_SetBBReg(Adapter, rTxAGC_A_Rate18_06, bMaskByte2, PowerIndex);
   break;
  case 145:
   PHY_SetBBReg(Adapter, rTxAGC_A_Rate18_06, bMaskByte3, PowerIndex);
   break;

  case 143:
   PHY_SetBBReg(Adapter, rTxAGC_A_Rate54_24, bMaskByte0, PowerIndex);
   break;
  case 141:
   PHY_SetBBReg(Adapter, rTxAGC_A_Rate54_24, bMaskByte1, PowerIndex);
   break;
  case 140:
   PHY_SetBBReg(Adapter, rTxAGC_A_Rate54_24, bMaskByte2, PowerIndex);
   break;
  case 139:
   PHY_SetBBReg(Adapter, rTxAGC_A_Rate54_24, bMaskByte3, PowerIndex);
   break;

  case 135:
   PHY_SetBBReg(Adapter, rTxAGC_A_Mcs03_Mcs00, bMaskByte0, PowerIndex);
   break;
  case 134:
   PHY_SetBBReg(Adapter, rTxAGC_A_Mcs03_Mcs00, bMaskByte1, PowerIndex);
   break;
  case 133:
   PHY_SetBBReg(Adapter, rTxAGC_A_Mcs03_Mcs00, bMaskByte2, PowerIndex);
   break;
  case 132:
   PHY_SetBBReg(Adapter, rTxAGC_A_Mcs03_Mcs00, bMaskByte3, PowerIndex);
   break;

  case 131:
   PHY_SetBBReg(Adapter, rTxAGC_A_Mcs07_Mcs04, bMaskByte0, PowerIndex);
   break;
  case 130:
   PHY_SetBBReg(Adapter, rTxAGC_A_Mcs07_Mcs04, bMaskByte1, PowerIndex);
   break;
  case 129:
   PHY_SetBBReg(Adapter, rTxAGC_A_Mcs07_Mcs04, bMaskByte2, PowerIndex);
   break;
  case 128:
   PHY_SetBBReg(Adapter, rTxAGC_A_Mcs07_Mcs04, bMaskByte3, PowerIndex);
   break;

  default:
   DBG_871X("Invalid Rate!!\n");
   break;
  }
 } else {
  RT_TRACE(_module_hal_init_c_, _drv_err_, ("Invalid RFPath!!\n"));
 }
}
