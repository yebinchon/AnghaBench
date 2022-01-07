
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct odm_dm_struct {struct adapter* Adapter; } ;
struct dm_priv {int bDynamicTxPowerEnable; void* DynamicTxHighPowerLvl; void* LastDTPLvl; } ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {struct dm_priv dmpriv; } ;


 void* TxHighPwrLevel_Normal ;

void odm_DynamicTxPowerInit(struct odm_dm_struct *pDM_Odm)
{
 struct adapter *Adapter = pDM_Odm->Adapter;
 struct dm_priv *pdmpriv = &Adapter->HalData->dmpriv;

 pdmpriv->bDynamicTxPowerEnable = 0;
 pdmpriv->LastDTPLvl = TxHighPwrLevel_Normal;
 pdmpriv->DynamicTxHighPowerLvl = TxHighPwrLevel_Normal;
}
