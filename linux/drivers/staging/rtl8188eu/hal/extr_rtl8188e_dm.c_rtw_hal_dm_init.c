
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct odm_dm_struct {int dummy; } ;
struct dm_priv {int dummy; } ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {struct odm_dm_struct odmpriv; struct dm_priv dmpriv; } ;


 int Init_ODM_ComInfo_88E (struct adapter*) ;
 int ODM_InitDebugSetting (struct odm_dm_struct*) ;
 int memset (struct dm_priv*,int ,int) ;

void rtw_hal_dm_init(struct adapter *Adapter)
{
 struct dm_priv *pdmpriv = &Adapter->HalData->dmpriv;
 struct odm_dm_struct *podmpriv = &Adapter->HalData->odmpriv;

 memset(pdmpriv, 0, sizeof(struct dm_priv));
 Init_ODM_ComInfo_88E(Adapter);
 ODM_InitDebugSetting(podmpriv);
}
