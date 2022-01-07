
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ RxIdleAnt; } ;
struct TYPE_4__ {TYPE_1__ DM_FatTable; } ;
struct hal_com_data {int ant_path; scalar_t__ AntDivCfg; TYPE_2__ odmpriv; } ;
struct adapter {int dummy; } ;
typedef TYPE_1__* pFAT_T ;
typedef TYPE_2__* PDM_ODM_T ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 scalar_t__ MAIN_ANT ;
 int ODM_RF_PATH_A ;
 int ODM_RF_PATH_B ;
 int PHY_SetTxPowerLevelByPath (struct adapter*,int ,int ) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_hal_init_c_ ;

void PHY_SetTxPowerLevel8723B(struct adapter *Adapter, u8 Channel)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 PDM_ODM_T pDM_Odm = &pHalData->odmpriv;
 pFAT_T pDM_FatTable = &pDM_Odm->DM_FatTable;
 u8 RFPath = ODM_RF_PATH_A;

 if (pHalData->AntDivCfg) {
  RFPath = ((pDM_FatTable->RxIdleAnt == MAIN_ANT) ? ODM_RF_PATH_A : ODM_RF_PATH_B);
 } else {
  RFPath = pHalData->ant_path;
 }

 RT_TRACE(_module_hal_init_c_, _drv_info_, ("==>PHY_SetTxPowerLevel8723B()\n"));

 PHY_SetTxPowerLevelByPath(Adapter, Channel, RFPath);

 RT_TRACE(_module_hal_init_c_, _drv_info_, ("<==PHY_SetTxPowerLevel8723B()\n"));
}
