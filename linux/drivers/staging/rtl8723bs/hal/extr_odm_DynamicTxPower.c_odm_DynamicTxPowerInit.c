
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_priv {int bDynamicTxPowerEnable; void* DynamicTxHighPowerLvl; void* LastDTPLvl; } ;
struct hal_com_data {struct dm_priv dmpriv; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {struct adapter* Adapter; } ;
typedef TYPE_1__* PDM_ODM_T ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 void* TxHighPwrLevel_Normal ;

void odm_DynamicTxPowerInit(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;

 struct adapter *Adapter = pDM_Odm->Adapter;
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 struct dm_priv *pdmpriv = &pHalData->dmpriv;

 pdmpriv->bDynamicTxPowerEnable = 0;

 pdmpriv->LastDTPLvl = TxHighPwrLevel_Normal;
 pdmpriv->DynamicTxHighPowerLvl = TxHighPwrLevel_Normal;
}
