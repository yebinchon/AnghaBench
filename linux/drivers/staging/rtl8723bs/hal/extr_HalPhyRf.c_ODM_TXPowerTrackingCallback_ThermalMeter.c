
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct TYPE_11__ {int bTXPowerTrackingInit; size_t* ThermalValue_AVG; size_t ThermalValue_AVG_index; size_t ThermalValue; size_t ThermalValue_LCK; size_t ThermalValue_IQK; size_t* DeltaPowerIndexLast; size_t* DeltaPowerIndex; scalar_t__* PowerIndexOffset; int* OFDM_index; int CCK_index; int bTxPowerChanged; scalar_t__ TXPowercount; scalar_t__ TxPowerTrackControl; scalar_t__ bReloadtxpowerindex; int TXPowerTrackingCallbackCnt; } ;
struct TYPE_13__ {int BbSwingIdxCckBase; int* BbSwingIdxOfdmBase; size_t* Absolute_OFDMSwingIdx; int BbSwingIdxCck; int* BbSwingIdxOfdm; TYPE_1__ RFCalibrateInfo; int Adapter; int DefaultOfdmIndex; } ;
struct hal_com_data {int EEPROMThermalMeter; TYPE_3__ odmpriv; } ;
struct adapter {int dummy; } ;
struct TYPE_12__ {size_t AverageThermalNum; size_t Threshold_IQK; int RfPathCount; int SwingTableSize_OFDM; int SwingTableSize_CCK; int (* ODM_TxPwrTrackSetPwr ) (TYPE_3__*,int ,size_t,size_t) ;int (* PHY_LCCalibrate ) (TYPE_3__*) ;int ThermalRegAddr; int (* GetDeltaSwingTable ) (TYPE_3__*,size_t**,size_t**,size_t**,size_t**) ;} ;
typedef TYPE_2__ TXPWRTRACK_CFG ;
typedef TYPE_3__* PDM_ODM_T ;


 int ConfigureTxpowerTrack (TYPE_3__*,TYPE_2__*) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int MIX_MODE ;
 int ODM_COMP_TX_PWR_TRACK ;
 int ODM_DBG_LOUD ;
 size_t ODM_RF_PATH_A ;
 size_t ODM_RF_PATH_B ;
 int ODM_RT_TRACE (TYPE_3__*,int ,int ,char*) ;
 scalar_t__ PHY_QueryRFReg (int ,size_t,int ,int) ;
 size_t TXPWR_TRACK_TABLE_SIZE ;
 int stub1 (TYPE_3__*,size_t**,size_t**,size_t**,size_t**) ;
 int stub2 (TYPE_3__*) ;
 int stub3 (TYPE_3__*,int ,size_t,size_t) ;
 int stub4 (TYPE_3__*,int ,size_t,size_t) ;

void ODM_TXPowerTrackingCallback_ThermalMeter(struct adapter *Adapter)
{

 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 PDM_ODM_T pDM_Odm = &pHalData->odmpriv;

 u8 ThermalValue = 0, delta, delta_LCK, delta_IQK, p = 0, i = 0;
 u8 ThermalValue_AVG_count = 0;
 u32 ThermalValue_AVG = 0;

 u8 OFDM_min_index = 0;
 u8 Indexforchannel = 0;

 TXPWRTRACK_CFG c;



 u8 *deltaSwingTableIdx_TUP_A;
 u8 *deltaSwingTableIdx_TDOWN_A;
 u8 *deltaSwingTableIdx_TUP_B;
 u8 *deltaSwingTableIdx_TDOWN_B;



 ConfigureTxpowerTrack(pDM_Odm, &c);

 (*c.GetDeltaSwingTable)(
  pDM_Odm,
  (u8 **)&deltaSwingTableIdx_TUP_A,
  (u8 **)&deltaSwingTableIdx_TDOWN_A,
  (u8 **)&deltaSwingTableIdx_TUP_B,
  (u8 **)&deltaSwingTableIdx_TDOWN_B
 );


 pDM_Odm->RFCalibrateInfo.TXPowerTrackingCallbackCnt++;
 pDM_Odm->RFCalibrateInfo.bTXPowerTrackingInit = 1;

 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_TX_PWR_TRACK,
  ODM_DBG_LOUD,
  (
   "===>ODM_TXPowerTrackingCallback_ThermalMeter,\npDM_Odm->BbSwingIdxCckBase: %d, pDM_Odm->BbSwingIdxOfdmBase[A]: %d, pDM_Odm->DefaultOfdmIndex: %d\n",
   pDM_Odm->BbSwingIdxCckBase,
   pDM_Odm->BbSwingIdxOfdmBase[ODM_RF_PATH_A],
   pDM_Odm->DefaultOfdmIndex
  )
 );

 ThermalValue = (u8)PHY_QueryRFReg(pDM_Odm->Adapter, ODM_RF_PATH_A, c.ThermalRegAddr, 0xfc00);
 if (
  !pDM_Odm->RFCalibrateInfo.TxPowerTrackControl ||
  pHalData->EEPROMThermalMeter == 0 ||
  pHalData->EEPROMThermalMeter == 0xFF
 )
  return;



 if (pDM_Odm->RFCalibrateInfo.bReloadtxpowerindex)
  ODM_RT_TRACE(
   pDM_Odm,
   ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
   ("reload ofdm index for band switch\n")
  );



 pDM_Odm->RFCalibrateInfo.ThermalValue_AVG[pDM_Odm->RFCalibrateInfo.ThermalValue_AVG_index] = ThermalValue;
 pDM_Odm->RFCalibrateInfo.ThermalValue_AVG_index++;
 if (pDM_Odm->RFCalibrateInfo.ThermalValue_AVG_index == c.AverageThermalNum)
  pDM_Odm->RFCalibrateInfo.ThermalValue_AVG_index = 0;

 for (i = 0; i < c.AverageThermalNum; i++) {
  if (pDM_Odm->RFCalibrateInfo.ThermalValue_AVG[i]) {
   ThermalValue_AVG += pDM_Odm->RFCalibrateInfo.ThermalValue_AVG[i];
   ThermalValue_AVG_count++;
  }
 }


 if (ThermalValue_AVG_count) {
  ThermalValue = (u8)(ThermalValue_AVG / ThermalValue_AVG_count);
  ODM_RT_TRACE(
   pDM_Odm,
   ODM_COMP_TX_PWR_TRACK,
   ODM_DBG_LOUD,
   (
    "AVG Thermal Meter = 0x%X, EFUSE Thermal Base = 0x%X\n",
    ThermalValue,
    pHalData->EEPROMThermalMeter
   )
  );
 }



 delta =
  (ThermalValue > pDM_Odm->RFCalibrateInfo.ThermalValue) ?
  (ThermalValue - pDM_Odm->RFCalibrateInfo.ThermalValue) :
  (pDM_Odm->RFCalibrateInfo.ThermalValue - ThermalValue);
 delta_LCK =
  (ThermalValue > pDM_Odm->RFCalibrateInfo.ThermalValue_LCK) ?
  (ThermalValue - pDM_Odm->RFCalibrateInfo.ThermalValue_LCK) :
  (pDM_Odm->RFCalibrateInfo.ThermalValue_LCK - ThermalValue);
 delta_IQK =
  (ThermalValue > pDM_Odm->RFCalibrateInfo.ThermalValue_IQK) ?
  (ThermalValue - pDM_Odm->RFCalibrateInfo.ThermalValue_IQK) :
  (pDM_Odm->RFCalibrateInfo.ThermalValue_IQK - ThermalValue);

 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_TX_PWR_TRACK,
  ODM_DBG_LOUD,
  (
   "(delta, delta_LCK, delta_IQK) = (%d, %d, %d)\n",
   delta,
   delta_LCK,
   delta_IQK
  )
 );



 if (delta_LCK >= c.Threshold_IQK) {
  ODM_RT_TRACE(
   pDM_Odm,
   ODM_COMP_TX_PWR_TRACK,
   ODM_DBG_LOUD,
   (
    "delta_LCK(%d) >= Threshold_IQK(%d)\n",
    delta_LCK,
    c.Threshold_IQK
   )
  );
  pDM_Odm->RFCalibrateInfo.ThermalValue_LCK = ThermalValue;
  if (c.PHY_LCCalibrate)
   (*c.PHY_LCCalibrate)(pDM_Odm);
 }


 if (delta > 0 && pDM_Odm->RFCalibrateInfo.TxPowerTrackControl) {

  delta =
   ThermalValue > pHalData->EEPROMThermalMeter ?
   (ThermalValue - pHalData->EEPROMThermalMeter) :
   (pHalData->EEPROMThermalMeter - ThermalValue);

  if (delta >= TXPWR_TRACK_TABLE_SIZE)
   delta = TXPWR_TRACK_TABLE_SIZE - 1;


  if (ThermalValue > pHalData->EEPROMThermalMeter) {
   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    (
     "deltaSwingTableIdx_TUP_A[%d] = %d\n",
     delta,
     deltaSwingTableIdx_TUP_A[delta]
    )
   );
   pDM_Odm->RFCalibrateInfo.DeltaPowerIndexLast[ODM_RF_PATH_A] =
    pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[ODM_RF_PATH_A];
   pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[ODM_RF_PATH_A] =
    deltaSwingTableIdx_TUP_A[delta];


   pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_A] =
    deltaSwingTableIdx_TUP_A[delta];

   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    (
     "******Temp is higher and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_A] = %d\n",
     pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_A]
    )
   );

   if (c.RfPathCount > 1) {
    ODM_RT_TRACE(
     pDM_Odm,
     ODM_COMP_TX_PWR_TRACK,
     ODM_DBG_LOUD,
     (
      "deltaSwingTableIdx_TUP_B[%d] = %d\n",
      delta,
      deltaSwingTableIdx_TUP_B[delta]
     )
    );
    pDM_Odm->RFCalibrateInfo.DeltaPowerIndexLast[ODM_RF_PATH_B] =
     pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[ODM_RF_PATH_B];
    pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[ODM_RF_PATH_B] =
     deltaSwingTableIdx_TUP_B[delta];


    pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_B] =
     deltaSwingTableIdx_TUP_B[delta];
    ODM_RT_TRACE(
     pDM_Odm,
     ODM_COMP_TX_PWR_TRACK,
     ODM_DBG_LOUD,
     (
      "******Temp is higher and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_B] = %d\n",
      pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_B]
     )
    );
   }

  } else {
   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    (
     "deltaSwingTableIdx_TDOWN_A[%d] = %d\n",
     delta,
     deltaSwingTableIdx_TDOWN_A[delta]
    )
   );

   pDM_Odm->RFCalibrateInfo.DeltaPowerIndexLast[ODM_RF_PATH_A] =
    pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[ODM_RF_PATH_A];
   pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[ODM_RF_PATH_A] =
    -1 * deltaSwingTableIdx_TDOWN_A[delta];


   pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_A] =
    -1 * deltaSwingTableIdx_TDOWN_A[delta];

   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    (
     "******Temp is lower and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_A] = %d\n",
     pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_A]
    )
   );

   if (c.RfPathCount > 1) {
    ODM_RT_TRACE(
     pDM_Odm,
     ODM_COMP_TX_PWR_TRACK,
     ODM_DBG_LOUD,
     (
      "deltaSwingTableIdx_TDOWN_B[%d] = %d\n",
      delta,
      deltaSwingTableIdx_TDOWN_B[delta]
     )
    );

    pDM_Odm->RFCalibrateInfo.DeltaPowerIndexLast[ODM_RF_PATH_B] =
     pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[ODM_RF_PATH_B];
    pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[ODM_RF_PATH_B] =
     -1 * deltaSwingTableIdx_TDOWN_B[delta];


    pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_B] =
     -1 * deltaSwingTableIdx_TDOWN_B[delta];

    ODM_RT_TRACE(
     pDM_Odm,
     ODM_COMP_TX_PWR_TRACK,
     ODM_DBG_LOUD,
     (
      "******Temp is lower and pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_B] = %d\n",
      pDM_Odm->Absolute_OFDMSwingIdx[ODM_RF_PATH_B]
     )
    );
   }
  }

  for (p = ODM_RF_PATH_A; p < c.RfPathCount; p++) {
   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    (
     "\n\n ================================ [Path-%c] Calculating PowerIndexOffset ================================\n",
     (p == ODM_RF_PATH_A ? 'A' : 'B')
    )
   );

   if (
    pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[p] ==
    pDM_Odm->RFCalibrateInfo.DeltaPowerIndexLast[p]
   )
    pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p] = 0;
   else
    pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p] = pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[p] - pDM_Odm->RFCalibrateInfo.DeltaPowerIndexLast[p];

   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    (
     "[Path-%c] PowerIndexOffset(%d) = DeltaPowerIndex(%d) - DeltaPowerIndexLast(%d)\n",
     (
      p == ODM_RF_PATH_A ? 'A' : 'B'),
      pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p],
      pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[p],
      pDM_Odm->RFCalibrateInfo.DeltaPowerIndexLast[p]
     )
    );

   pDM_Odm->RFCalibrateInfo.OFDM_index[p] =
    pDM_Odm->BbSwingIdxOfdmBase[p] +
    pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p];

   pDM_Odm->RFCalibrateInfo.CCK_index =
    pDM_Odm->BbSwingIdxCckBase +
    pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p];

   pDM_Odm->BbSwingIdxCck =
    pDM_Odm->RFCalibrateInfo.CCK_index;

   pDM_Odm->BbSwingIdxOfdm[p] =
    pDM_Odm->RFCalibrateInfo.OFDM_index[p];


   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    (
     "The 'CCK' final index(%d) = BaseIndex(%d) + PowerIndexOffset(%d)\n",
     pDM_Odm->BbSwingIdxCck,
     pDM_Odm->BbSwingIdxCckBase,
     pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p]
    )
   );
   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    (
     "The 'OFDM' final index(%d) = BaseIndex[%c](%d) + PowerIndexOffset(%d)\n",
     pDM_Odm->BbSwingIdxOfdm[p],
     (p == ODM_RF_PATH_A ? 'A' : 'B'),
     pDM_Odm->BbSwingIdxOfdmBase[p],
     pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p]
    )
   );


   if (pDM_Odm->RFCalibrateInfo.OFDM_index[p] > c.SwingTableSize_OFDM-1)
    pDM_Odm->RFCalibrateInfo.OFDM_index[p] = c.SwingTableSize_OFDM-1;
   else if (pDM_Odm->RFCalibrateInfo.OFDM_index[p] < OFDM_min_index)
    pDM_Odm->RFCalibrateInfo.OFDM_index[p] = OFDM_min_index;
  }
  ODM_RT_TRACE(
   pDM_Odm,
   ODM_COMP_TX_PWR_TRACK,
   ODM_DBG_LOUD,
   ("\n\n ========================================================================================================\n")
  );
  if (pDM_Odm->RFCalibrateInfo.CCK_index > c.SwingTableSize_CCK-1)
   pDM_Odm->RFCalibrateInfo.CCK_index = c.SwingTableSize_CCK-1;


 } else {
  ODM_RT_TRACE(
   pDM_Odm,
   ODM_COMP_TX_PWR_TRACK,
   ODM_DBG_LOUD,
   (
    "The thermal meter is unchanged or TxPowerTracking OFF(%d): ThermalValue: %d , pDM_Odm->RFCalibrateInfo.ThermalValue: %d\n",
    pDM_Odm->RFCalibrateInfo.TxPowerTrackControl,
    ThermalValue,
    pDM_Odm->RFCalibrateInfo.ThermalValue
   )
  );

   for (p = ODM_RF_PATH_A; p < c.RfPathCount; p++)
    pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p] = 0;
 }
 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_TX_PWR_TRACK,
  ODM_DBG_LOUD,
  (
   "TxPowerTracking: [CCK] Swing Current Index: %d, Swing Base Index: %d\n",
   pDM_Odm->RFCalibrateInfo.CCK_index,
   pDM_Odm->BbSwingIdxCckBase
  )
 );


 for (p = ODM_RF_PATH_A; p < c.RfPathCount; p++) {
  ODM_RT_TRACE(
   pDM_Odm,
   ODM_COMP_TX_PWR_TRACK,
   ODM_DBG_LOUD,
   (
    "TxPowerTracking: [OFDM] Swing Current Index: %d, Swing Base Index[%c]: %d\n",
    pDM_Odm->RFCalibrateInfo.OFDM_index[p],
    (p == ODM_RF_PATH_A ? 'A' : 'B'),
    pDM_Odm->BbSwingIdxOfdmBase[p]
   )
  );
 }

 if (
  (pDM_Odm->RFCalibrateInfo.PowerIndexOffset[ODM_RF_PATH_A] != 0 ||
   pDM_Odm->RFCalibrateInfo.PowerIndexOffset[ODM_RF_PATH_B] != 0) &&
   pDM_Odm->RFCalibrateInfo.TxPowerTrackControl
  ) {


  pDM_Odm->RFCalibrateInfo.bTxPowerChanged = 1;





  if (ThermalValue > pDM_Odm->RFCalibrateInfo.ThermalValue) {
   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    (
     "Temperature Increasing(A): delta_pi: %d , delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\n",
     pDM_Odm->RFCalibrateInfo.PowerIndexOffset[ODM_RF_PATH_A],
     delta,
     ThermalValue,
     pHalData->EEPROMThermalMeter,
     pDM_Odm->RFCalibrateInfo.ThermalValue
    )
   );

   if (c.RfPathCount > 1)
    ODM_RT_TRACE(
     pDM_Odm,
     ODM_COMP_TX_PWR_TRACK,
     ODM_DBG_LOUD,
     (
      "Temperature Increasing(B): delta_pi: %d , delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\n",
      pDM_Odm->RFCalibrateInfo.PowerIndexOffset[ODM_RF_PATH_B],
      delta,
      ThermalValue,
      pHalData->EEPROMThermalMeter,
      pDM_Odm->RFCalibrateInfo.ThermalValue
     )
    );

  } else if (ThermalValue < pDM_Odm->RFCalibrateInfo.ThermalValue) {
   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    (
     "Temperature Decreasing(A): delta_pi: %d , delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\n",
     pDM_Odm->RFCalibrateInfo.PowerIndexOffset[ODM_RF_PATH_A],
     delta,
     ThermalValue,
     pHalData->EEPROMThermalMeter,
     pDM_Odm->RFCalibrateInfo.ThermalValue
    )
   );

   if (c.RfPathCount > 1)
    ODM_RT_TRACE(
     pDM_Odm,
     ODM_COMP_TX_PWR_TRACK,
     ODM_DBG_LOUD,
     (
      "Temperature Decreasing(B): delta_pi: %d , delta_t: %d, Now_t: %d, EFUSE_t: %d, Last_t: %d\n",
      pDM_Odm->RFCalibrateInfo.PowerIndexOffset[ODM_RF_PATH_B],
      delta,
      ThermalValue,
      pHalData->EEPROMThermalMeter,
      pDM_Odm->RFCalibrateInfo.ThermalValue
     )
    );

  }

  if (ThermalValue > pHalData->EEPROMThermalMeter) {
   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    (
     "Temperature(%d) higher than PG value(%d)\n",
     ThermalValue,
     pHalData->EEPROMThermalMeter
    )
   );

   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    ("**********Enter POWER Tracking MIX_MODE**********\n")
   );
   for (p = ODM_RF_PATH_A; p < c.RfPathCount; p++)
     (*c.ODM_TxPwrTrackSetPwr)(pDM_Odm, MIX_MODE, p, 0);
  } else {
   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    (
     "Temperature(%d) lower than PG value(%d)\n",
     ThermalValue,
     pHalData->EEPROMThermalMeter
    )
   );

   ODM_RT_TRACE(
    pDM_Odm,
    ODM_COMP_TX_PWR_TRACK,
    ODM_DBG_LOUD,
    ("**********Enter POWER Tracking MIX_MODE**********\n")
   );
   for (p = ODM_RF_PATH_A; p < c.RfPathCount; p++)
    (*c.ODM_TxPwrTrackSetPwr)(pDM_Odm, MIX_MODE, p, Indexforchannel);
  }


  pDM_Odm->BbSwingIdxCckBase = pDM_Odm->BbSwingIdxCck;
  for (p = ODM_RF_PATH_A; p < c.RfPathCount; p++)
   pDM_Odm->BbSwingIdxOfdmBase[p] = pDM_Odm->BbSwingIdxOfdm[p];

  ODM_RT_TRACE(
   pDM_Odm,
   ODM_COMP_TX_PWR_TRACK, ODM_DBG_LOUD,
   (
    "pDM_Odm->RFCalibrateInfo.ThermalValue = %d ThermalValue = %d\n",
    pDM_Odm->RFCalibrateInfo.ThermalValue,
    ThermalValue
   )
  );


  pDM_Odm->RFCalibrateInfo.ThermalValue = ThermalValue;
 }

 ODM_RT_TRACE(
  pDM_Odm,
  ODM_COMP_TX_PWR_TRACK,
  ODM_DBG_LOUD,
  ("<===ODM_TXPowerTrackingCallback_ThermalMeter\n")
 );

 pDM_Odm->RFCalibrateInfo.TXPowercount = 0;
}
