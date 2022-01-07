
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_priv {int dummy; } ;
struct hal_com_data {struct dm_priv dmpriv; } ;
struct adapter {int dummy; } ;


 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int Init_ODM_ComInfo_8723b (struct adapter*) ;
 int memset (struct dm_priv*,int ,int) ;

void rtl8723b_init_dm_priv(struct adapter *Adapter)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(Adapter);
 struct dm_priv *pdmpriv = &pHalData->dmpriv;

 memset(pdmpriv, 0, sizeof(struct dm_priv));
 Init_ODM_ComInfo_8723b(Adapter);
}
