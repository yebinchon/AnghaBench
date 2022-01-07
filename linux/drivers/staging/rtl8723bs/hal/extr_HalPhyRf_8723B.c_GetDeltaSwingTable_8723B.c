
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hal_com_data {int CurrentChannel; } ;
struct adapter {int dummy; } ;
struct TYPE_4__ {int* DeltaSwingTableIdx_2GCCKA_P; int* DeltaSwingTableIdx_2GCCKA_N; int* DeltaSwingTableIdx_2GCCKB_P; int* DeltaSwingTableIdx_2GCCKB_N; int* DeltaSwingTableIdx_2GA_P; int* DeltaSwingTableIdx_2GA_N; int* DeltaSwingTableIdx_2GB_P; int* DeltaSwingTableIdx_2GB_N; } ;
struct TYPE_5__ {int * pForcedDataRate; TYPE_1__ RFCalibrateInfo; struct adapter* Adapter; } ;
typedef TYPE_1__* PODM_RF_CAL_T ;
typedef TYPE_2__* PDM_ODM_T ;


 scalar_t__ DeltaSwingTableIdx_2GA_N_8188E ;
 scalar_t__ DeltaSwingTableIdx_2GA_P_8188E ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 scalar_t__ IS_CCK_RATE (int ) ;

__attribute__((used)) static void GetDeltaSwingTable_8723B(
 PDM_ODM_T pDM_Odm,
 u8 **TemperatureUP_A,
 u8 **TemperatureDOWN_A,
 u8 **TemperatureUP_B,
 u8 **TemperatureDOWN_B
)
{
 struct adapter *Adapter = pDM_Odm->Adapter;
 PODM_RF_CAL_T pRFCalibrateInfo = &(pDM_Odm->RFCalibrateInfo);
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 u16 rate = *(pDM_Odm->pForcedDataRate);
 u8 channel = pHalData->CurrentChannel;

 if (1 <= channel && channel <= 14) {
  if (IS_CCK_RATE(rate)) {
   *TemperatureUP_A = pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKA_P;
   *TemperatureDOWN_A = pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKA_N;
   *TemperatureUP_B = pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKB_P;
   *TemperatureDOWN_B = pRFCalibrateInfo->DeltaSwingTableIdx_2GCCKB_N;
  } else {
   *TemperatureUP_A = pRFCalibrateInfo->DeltaSwingTableIdx_2GA_P;
   *TemperatureDOWN_A = pRFCalibrateInfo->DeltaSwingTableIdx_2GA_N;
   *TemperatureUP_B = pRFCalibrateInfo->DeltaSwingTableIdx_2GB_P;
   *TemperatureDOWN_B = pRFCalibrateInfo->DeltaSwingTableIdx_2GB_N;
  }
 } else {
  *TemperatureUP_A = (u8 *)DeltaSwingTableIdx_2GA_P_8188E;
  *TemperatureDOWN_A = (u8 *)DeltaSwingTableIdx_2GA_N_8188E;
  *TemperatureUP_B = (u8 *)DeltaSwingTableIdx_2GA_P_8188E;
  *TemperatureDOWN_B = (u8 *)DeltaSwingTableIdx_2GA_N_8188E;
 }

 return;
}
