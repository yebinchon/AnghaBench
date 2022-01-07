
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct odm_dm_struct {int dummy; } ;
struct dm_priv {int DMFlag; int DM_Type; } ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {struct odm_dm_struct odmpriv; struct dm_priv dmpriv; } ;


 int DM_Type_ByDriver ;
 int DYNAMIC_FUNC_DISABLE ;
 int ODM_DMInit (struct odm_dm_struct*) ;
 int Update_ODM_ComInfo_88E (struct adapter*) ;
 int dm_InitGPIOSetting (struct adapter*) ;

void rtl8188e_InitHalDm(struct adapter *Adapter)
{
 struct dm_priv *pdmpriv = &Adapter->HalData->dmpriv;
 struct odm_dm_struct *dm_odm = &(Adapter->HalData->odmpriv);

 dm_InitGPIOSetting(Adapter);
 pdmpriv->DM_Type = DM_Type_ByDriver;
 pdmpriv->DMFlag = DYNAMIC_FUNC_DISABLE;
 Update_ODM_ComInfo_88E(Adapter);
 ODM_DMInit(dm_odm);
}
