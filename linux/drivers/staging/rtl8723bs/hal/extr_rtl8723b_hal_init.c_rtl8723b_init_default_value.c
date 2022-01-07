
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_5__ {int fakeBTEfuseModifiedMap; int fakeBTEfuseInitMap; int fakeBTEfuseContent; scalar_t__ fakeBTEfuseUsedBytes; int BTEfuseModifiedMap; int BTEfuseInitMap; int BTEfuseContent; scalar_t__ BTEfuseUsedPercentage; scalar_t__ BTEfuseUsedBytes; int fakeEfuseModifiedMap; int fakeEfuseInitMap; int fakeEfuseContent; scalar_t__ fakeEfuseUsedBytes; scalar_t__ fakeEfuseBank; } ;
struct dm_priv {scalar_t__* ThermalValue_HP; scalar_t__ ThermalValue_HP_index; scalar_t__ TM_Trigger; } ;
struct hal_com_data {int fw_ractrl; int bIQKInitialized; TYPE_2__ EfuseHal; scalar_t__ EfuseUsedPercentage; scalar_t__ EfuseUsedBytes; scalar_t__ LastHMEBoxNum; struct dm_priv dmpriv; } ;
struct TYPE_4__ {int wireless_mode; } ;
struct adapter {TYPE_1__ registrypriv; } ;
struct TYPE_6__ {int bkeepfwalive; } ;


 int EFUSE_BT_MAX_MAP_LEN ;
 int EFUSE_MAX_BT_BANK ;
 int EFUSE_MAX_HW_SIZE ;
 int EFUSE_MAX_MAP_LEN ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 size_t HP_THERMAL_NUM ;
 int WIRELESS_11BG_24N ;
 TYPE_3__* adapter_to_pwrctl (struct adapter*) ;
 int memset (int ,int,int) ;

void rtl8723b_init_default_value(struct adapter *padapter)
{
 struct hal_com_data *pHalData;
 struct dm_priv *pdmpriv;
 u8 i;


 pHalData = GET_HAL_DATA(padapter);
 pdmpriv = &pHalData->dmpriv;

 padapter->registrypriv.wireless_mode = WIRELESS_11BG_24N;


 pHalData->fw_ractrl = 0;
 pHalData->bIQKInitialized = 0;
 if (!adapter_to_pwrctl(padapter)->bkeepfwalive)
  pHalData->LastHMEBoxNum = 0;

 pHalData->bIQKInitialized = 0;


 pdmpriv->TM_Trigger = 0;




 pdmpriv->ThermalValue_HP_index = 0;
 for (i = 0; i < HP_THERMAL_NUM; i++)
  pdmpriv->ThermalValue_HP[i] = 0;


 pHalData->EfuseUsedBytes = 0;
 pHalData->EfuseUsedPercentage = 0;
}
