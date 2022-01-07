
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eeprom_priv {scalar_t__ efuse_eeprom_data; int EepromOrEfuse; int bautoload_fail_flag; } ;
struct adapter {int dummy; } ;


 int EFUSE_ShadowMapUpdate (struct adapter*,int ,int) ;
 int EFUSE_WIFI ;
 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;
 int HWSET_MAX_SIZE_8723B ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_notice_ ;
 int _module_hci_hal_init_c_ ;
 int memcpy (void*,void*,int ) ;

void Hal_InitPGData(struct adapter *padapter, u8 *PROMContent)
{
 struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);

 if (!pEEPROM->bautoload_fail_flag) {
  if (!pEEPROM->EepromOrEfuse) {

   EFUSE_ShadowMapUpdate(padapter, EFUSE_WIFI, 0);
   memcpy((void *)PROMContent, (void *)pEEPROM->efuse_eeprom_data, HWSET_MAX_SIZE_8723B);
  }
 } else {
  RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("AutoLoad Fail reported from CR9346!!\n"));
  if (!pEEPROM->EepromOrEfuse)
   EFUSE_ShadowMapUpdate(padapter, EFUSE_WIFI, 0);
  memcpy((void *)PROMContent, (void *)pEEPROM->efuse_eeprom_data, HWSET_MAX_SIZE_8723B);
 }
}
