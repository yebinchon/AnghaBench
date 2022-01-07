
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_priv {int DMFlag; int InitDMFlag; int DM_Type; } ;
struct hal_com_data {int odmpriv; struct dm_priv dmpriv; } ;
struct adapter {int dummy; } ;
typedef int * PDM_ODM_T ;


 int DM_Type_ByDriver ;
 int DYNAMIC_FUNC_BT ;
 int DYNAMIC_FUNC_DISABLE ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int ODM_DMInit (int *) ;
 int Update_ODM_ComInfo_8723b (struct adapter*) ;

void rtl8723b_InitHalDm(struct adapter *Adapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 struct dm_priv *pdmpriv = &pHalData->dmpriv;
 PDM_ODM_T pDM_Odm = &(pHalData->odmpriv);

 pdmpriv->DM_Type = DM_Type_ByDriver;
 pdmpriv->DMFlag = DYNAMIC_FUNC_DISABLE;

 pdmpriv->DMFlag |= DYNAMIC_FUNC_BT;

 pdmpriv->InitDMFlag = pdmpriv->DMFlag;

 Update_ODM_ComInfo_8723b(Adapter);

 ODM_DMInit(pDM_Odm);
}
