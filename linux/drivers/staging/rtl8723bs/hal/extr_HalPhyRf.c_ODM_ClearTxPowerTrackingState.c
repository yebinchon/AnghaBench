
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct hal_com_data {int EEPROMThermalMeter; } ;
struct TYPE_4__ {int ThermalValue_LCK; int ThermalValue_IQK; int ThermalValue; scalar_t__* PowerIndexOffset; scalar_t__* DeltaPowerIndexLast; scalar_t__* DeltaPowerIndex; int * OFDM_index; scalar_t__ CCK_index; } ;
struct TYPE_5__ {int Modify_TxAGC_Flag_PathA; int Modify_TxAGC_Flag_PathB; TYPE_1__ RFCalibrateInfo; scalar_t__ Remnant_CCKSwingIdx; scalar_t__* Remnant_OFDMSwingIdx; scalar_t__* Absolute_OFDMSwingIdx; int DefaultOfdmIndex; int * BbSwingIdxOfdm; int * BbSwingIdxOfdmBase; int DefaultCckIndex; int BbSwingIdxCck; int BbSwingIdxCckBase; int Adapter; } ;
typedef TYPE_2__* PDM_ODM_T ;


 struct hal_com_data* GET_HAL_DATA (int ) ;
 size_t MAX_RF_PATH ;
 size_t ODM_RF_PATH_A ;

void ODM_ClearTxPowerTrackingState(PDM_ODM_T pDM_Odm)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(pDM_Odm->Adapter);
 u8 p = 0;

 pDM_Odm->BbSwingIdxCckBase = pDM_Odm->DefaultCckIndex;
 pDM_Odm->BbSwingIdxCck = pDM_Odm->DefaultCckIndex;
 pDM_Odm->RFCalibrateInfo.CCK_index = 0;

 for (p = ODM_RF_PATH_A; p < MAX_RF_PATH; ++p) {
  pDM_Odm->BbSwingIdxOfdmBase[p] = pDM_Odm->DefaultOfdmIndex;
  pDM_Odm->BbSwingIdxOfdm[p] = pDM_Odm->DefaultOfdmIndex;
  pDM_Odm->RFCalibrateInfo.OFDM_index[p] = pDM_Odm->DefaultOfdmIndex;

  pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p] = 0;
  pDM_Odm->RFCalibrateInfo.DeltaPowerIndex[p] = 0;
  pDM_Odm->RFCalibrateInfo.DeltaPowerIndexLast[p] = 0;
  pDM_Odm->RFCalibrateInfo.PowerIndexOffset[p] = 0;


  pDM_Odm->Absolute_OFDMSwingIdx[p] = 0;
  pDM_Odm->Remnant_OFDMSwingIdx[p] = 0;
 }


 pDM_Odm->Modify_TxAGC_Flag_PathA = 0;

 pDM_Odm->Modify_TxAGC_Flag_PathB = 0;
 pDM_Odm->Remnant_CCKSwingIdx = 0;
 pDM_Odm->RFCalibrateInfo.ThermalValue = pHalData->EEPROMThermalMeter;
 pDM_Odm->RFCalibrateInfo.ThermalValue_IQK = pHalData->EEPROMThermalMeter;
 pDM_Odm->RFCalibrateInfo.ThermalValue_LCK = pHalData->EEPROMThermalMeter;
}
