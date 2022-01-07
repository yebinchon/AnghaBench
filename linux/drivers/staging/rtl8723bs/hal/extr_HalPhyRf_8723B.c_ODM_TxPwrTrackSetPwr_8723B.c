
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct hal_com_data {int CurrentChannel; } ;
struct adapter {int dummy; } ;
struct TYPE_8__ {TYPE_2__* IQKMatrixRegSetting; } ;
struct TYPE_10__ {int TxRate; int DefaultOfdmIndex; int* Remnant_OFDMSwingIdx; int* Absolute_OFDMSwingIdx; int Modify_TxAGC_Flag_PathA; int Modify_TxAGC_Flag_PathA_CCK; int DefaultCckIndex; scalar_t__ BbSwingIdxCck; int Remnant_CCKSwingIdx; TYPE_1__ RFCalibrateInfo; int * pChannel; struct adapter* Adapter; scalar_t__* pForcedDataRate; } ;
struct TYPE_9__ {int ** Value; } ;
typedef scalar_t__ PWRTRACK_METHOD ;
typedef TYPE_3__* PDM_ODM_T ;


 scalar_t__ BBSWING ;
 int CCK ;
 int CCK_TABLE_SIZE ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int HT_MCS0_MCS7 ;
 int HwRateToMRate (int) ;
 int MGN_11M ;
 int MGN_1M ;
 int MGN_48M ;
 int MGN_54M ;
 int MGN_6M ;
 int MGN_MCS0 ;
 int MGN_MCS2 ;
 int MGN_MCS3 ;
 int MGN_MCS4 ;
 int MGN_MCS5 ;
 int MGN_MCS7 ;
 scalar_t__ MIX_MODE ;
 int ODM_COMP_TX_PWR_TRACK ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_3__*,int ,int ,char*) ;
 int OFDM ;
 int PHY_SetTxPowerIndexByRateSection (struct adapter*,int,int ,int ) ;
 scalar_t__ TXAGC ;
 int setCCKFilterCoefficient (TYPE_3__*,int) ;
 int setIqkMatrix_8723B (TYPE_3__*,int,int,int ,int ) ;

void ODM_TxPwrTrackSetPwr_8723B(
 PDM_ODM_T pDM_Odm,
 PWRTRACK_METHOD Method,
 u8 RFPath,
 u8 ChannelMappedIndex
)
{
 struct adapter *Adapter = pDM_Odm->Adapter;
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 u8 PwrTrackingLimit_OFDM = 34;
 u8 PwrTrackingLimit_CCK = 28;
 u8 TxRate = 0xFF;
 u8 Final_OFDM_Swing_Index = 0;
 u8 Final_CCK_Swing_Index = 0;

 {
  u16 rate = *(pDM_Odm->pForcedDataRate);

  if (!rate) {
   if (pDM_Odm->TxRate != 0xFF)
    TxRate = HwRateToMRate(pDM_Odm->TxRate);
  } else
   TxRate = (u8)rate;

 }

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD, ("===>ODM_TxPwrTrackSetPwr8723B\n"));

 if (TxRate != 0xFF) {

  if ((TxRate >= MGN_1M) && (TxRate <= MGN_11M))
   PwrTrackingLimit_CCK = 28;

  else if ((TxRate >= MGN_6M) && (TxRate <= MGN_48M))
   PwrTrackingLimit_OFDM = 36;
  else if (TxRate == MGN_54M)
   PwrTrackingLimit_OFDM = 34;


  else if ((TxRate >= MGN_MCS0) && (TxRate <= MGN_MCS2))
   PwrTrackingLimit_OFDM = 38;
  else if ((TxRate >= MGN_MCS3) && (TxRate <= MGN_MCS4))
   PwrTrackingLimit_OFDM = 36;
  else if ((TxRate >= MGN_MCS5) && (TxRate <= MGN_MCS7))
   PwrTrackingLimit_OFDM = 34;

  else
   PwrTrackingLimit_OFDM = pDM_Odm->DefaultOfdmIndex;
 }
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD, ("TxRate = 0x%x, PwrTrackingLimit =%d\n", TxRate, PwrTrackingLimit_OFDM));

 if (Method == TXAGC) {
  struct adapter *Adapter = pDM_Odm->Adapter;

  ODM_RT_TRACE(pDM_Odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD, ("odm_TxPwrTrackSetPwr8723B CH =%d\n", *(pDM_Odm->pChannel)));

  pDM_Odm->Remnant_OFDMSwingIdx[RFPath] = pDM_Odm->Absolute_OFDMSwingIdx[RFPath];

  pDM_Odm->Modify_TxAGC_Flag_PathA = 1;
  pDM_Odm->Modify_TxAGC_Flag_PathA_CCK = 1;

  PHY_SetTxPowerIndexByRateSection(Adapter, RFPath, pHalData->CurrentChannel, CCK);
  PHY_SetTxPowerIndexByRateSection(Adapter, RFPath, pHalData->CurrentChannel, OFDM);
  PHY_SetTxPowerIndexByRateSection(Adapter, RFPath, pHalData->CurrentChannel, HT_MCS0_MCS7);
 } else if (Method == BBSWING) {
  Final_OFDM_Swing_Index = pDM_Odm->DefaultOfdmIndex + pDM_Odm->Absolute_OFDMSwingIdx[RFPath];
  Final_CCK_Swing_Index = pDM_Odm->DefaultCckIndex + pDM_Odm->Absolute_OFDMSwingIdx[RFPath];


  if (Final_OFDM_Swing_Index >= PwrTrackingLimit_OFDM)
   Final_OFDM_Swing_Index = PwrTrackingLimit_OFDM;
  else if (Final_OFDM_Swing_Index <= 0)
   Final_OFDM_Swing_Index = 0;

  if (Final_CCK_Swing_Index >= CCK_TABLE_SIZE)
   Final_CCK_Swing_Index = CCK_TABLE_SIZE-1;
  else if (pDM_Odm->BbSwingIdxCck <= 0)
   Final_CCK_Swing_Index = 0;

  setIqkMatrix_8723B(pDM_Odm, Final_OFDM_Swing_Index, RFPath,
   pDM_Odm->RFCalibrateInfo.IQKMatrixRegSetting[ChannelMappedIndex].Value[0][0],
   pDM_Odm->RFCalibrateInfo.IQKMatrixRegSetting[ChannelMappedIndex].Value[0][1]);

  setCCKFilterCoefficient(pDM_Odm, Final_CCK_Swing_Index);

 } else if (Method == MIX_MODE) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
   ("pDM_Odm->DefaultOfdmIndex =%d,  pDM_Odm->DefaultCCKIndex =%d, pDM_Odm->Absolute_OFDMSwingIdx[RFPath]=%d, RF_Path = %d\n",
   pDM_Odm->DefaultOfdmIndex, pDM_Odm->DefaultCckIndex, pDM_Odm->Absolute_OFDMSwingIdx[RFPath], RFPath));

  Final_OFDM_Swing_Index = pDM_Odm->DefaultOfdmIndex + pDM_Odm->Absolute_OFDMSwingIdx[RFPath];
  Final_CCK_Swing_Index = pDM_Odm->DefaultCckIndex + pDM_Odm->Absolute_OFDMSwingIdx[RFPath];

  if (Final_OFDM_Swing_Index > PwrTrackingLimit_OFDM) {
   pDM_Odm->Remnant_OFDMSwingIdx[RFPath] = Final_OFDM_Swing_Index - PwrTrackingLimit_OFDM;

   setIqkMatrix_8723B(pDM_Odm, PwrTrackingLimit_OFDM, RFPath,
    pDM_Odm->RFCalibrateInfo.IQKMatrixRegSetting[ChannelMappedIndex].Value[0][0],
    pDM_Odm->RFCalibrateInfo.IQKMatrixRegSetting[ChannelMappedIndex].Value[0][1]);

   pDM_Odm->Modify_TxAGC_Flag_PathA = 1;
   PHY_SetTxPowerIndexByRateSection(Adapter, RFPath, pHalData->CurrentChannel, OFDM);
   PHY_SetTxPowerIndexByRateSection(Adapter, RFPath, pHalData->CurrentChannel, HT_MCS0_MCS7);

   ODM_RT_TRACE(pDM_Odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
    ("******Path_A Over BBSwing Limit , PwrTrackingLimit = %d , Remnant TxAGC Value = %d\n",
    PwrTrackingLimit_OFDM, pDM_Odm->Remnant_OFDMSwingIdx[RFPath]));
  } else if (Final_OFDM_Swing_Index <= 0) {
   pDM_Odm->Remnant_OFDMSwingIdx[RFPath] = Final_OFDM_Swing_Index;

   setIqkMatrix_8723B(pDM_Odm, 0, RFPath,
    pDM_Odm->RFCalibrateInfo.IQKMatrixRegSetting[ChannelMappedIndex].Value[0][0],
    pDM_Odm->RFCalibrateInfo.IQKMatrixRegSetting[ChannelMappedIndex].Value[0][1]);

   pDM_Odm->Modify_TxAGC_Flag_PathA = 1;
   PHY_SetTxPowerIndexByRateSection(Adapter, RFPath, pHalData->CurrentChannel, OFDM);
   PHY_SetTxPowerIndexByRateSection(Adapter, RFPath, pHalData->CurrentChannel, HT_MCS0_MCS7);

   ODM_RT_TRACE(pDM_Odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
    ("******Path_A Lower then BBSwing lower bound  0 , Remnant TxAGC Value = %d\n",
    pDM_Odm->Remnant_OFDMSwingIdx[RFPath]));
  } else {
   setIqkMatrix_8723B(pDM_Odm, Final_OFDM_Swing_Index, RFPath,
    pDM_Odm->RFCalibrateInfo.IQKMatrixRegSetting[ChannelMappedIndex].Value[0][0],
    pDM_Odm->RFCalibrateInfo.IQKMatrixRegSetting[ChannelMappedIndex].Value[0][1]);

   ODM_RT_TRACE(pDM_Odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
    ("******Path_A Compensate with BBSwing , Final_OFDM_Swing_Index = %d\n", Final_OFDM_Swing_Index));

   if (pDM_Odm->Modify_TxAGC_Flag_PathA) {
    pDM_Odm->Remnant_OFDMSwingIdx[RFPath] = 0;
    PHY_SetTxPowerIndexByRateSection(Adapter, RFPath, pHalData->CurrentChannel, OFDM);
    PHY_SetTxPowerIndexByRateSection(Adapter, RFPath, pHalData->CurrentChannel, HT_MCS0_MCS7);
    pDM_Odm->Modify_TxAGC_Flag_PathA = 0;

    ODM_RT_TRACE(pDM_Odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
     ("******Path_A pDM_Odm->Modify_TxAGC_Flag = false\n"));
   }
  }

  if (Final_CCK_Swing_Index > PwrTrackingLimit_CCK) {
   pDM_Odm->Remnant_CCKSwingIdx = Final_CCK_Swing_Index - PwrTrackingLimit_CCK;
   setCCKFilterCoefficient(pDM_Odm, PwrTrackingLimit_CCK);
   pDM_Odm->Modify_TxAGC_Flag_PathA_CCK = 1;
   PHY_SetTxPowerIndexByRateSection(Adapter, RFPath, pHalData->CurrentChannel, CCK);

   ODM_RT_TRACE(pDM_Odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
    ("******Path_A CCK Over Limit , PwrTrackingLimit_CCK = %d , pDM_Odm->Remnant_CCKSwingIdx  = %d\n", PwrTrackingLimit_CCK, pDM_Odm->Remnant_CCKSwingIdx));
  } else if (Final_CCK_Swing_Index <= 0) {
   pDM_Odm->Remnant_CCKSwingIdx = Final_CCK_Swing_Index;
   setCCKFilterCoefficient(pDM_Odm, 0);
   pDM_Odm->Modify_TxAGC_Flag_PathA_CCK = 1;
   PHY_SetTxPowerIndexByRateSection(Adapter, RFPath, pHalData->CurrentChannel, CCK);

   ODM_RT_TRACE(pDM_Odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
    ("******Path_A CCK Under Limit , PwrTrackingLimit_CCK = %d , pDM_Odm->Remnant_CCKSwingIdx  = %d\n", 0, pDM_Odm->Remnant_CCKSwingIdx));
  } else {
   setCCKFilterCoefficient(pDM_Odm, Final_CCK_Swing_Index);

   ODM_RT_TRACE(pDM_Odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
    ("******Path_A CCK Compensate with BBSwing , Final_CCK_Swing_Index = %d\n", Final_CCK_Swing_Index));

   if (pDM_Odm->Modify_TxAGC_Flag_PathA_CCK) {
    pDM_Odm->Remnant_CCKSwingIdx = 0;
    PHY_SetTxPowerIndexByRateSection(Adapter, RFPath, pHalData->CurrentChannel, CCK);
    pDM_Odm->Modify_TxAGC_Flag_PathA_CCK = 0;

    ODM_RT_TRACE(pDM_Odm, ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
     ("******Path_A pDM_Odm->Modify_TxAGC_Flag_CCK = false\n"));
   }
  }
 } else
  return;
}
