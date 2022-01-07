
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeprom_priv {int bautoload_fail_flag; } ;
struct adapter {int dummy; } ;


 int EFUSE_ShadowMapUpdate (struct adapter*,int ) ;
 int EFUSE_WIFI ;
 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_notice_ ;
 int _module_hci_hal_init_c_ ;
 int is_boot_from_eeprom (struct adapter*) ;

void Hal_InitPGData88E(struct adapter *padapter)
{
 struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);

 if (!pEEPROM->bautoload_fail_flag) {
  if (!is_boot_from_eeprom(padapter)) {

   EFUSE_ShadowMapUpdate(padapter, EFUSE_WIFI);
  }
 } else {
  RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("AutoLoad Fail reported from CR9346!!\n"));

  if (!is_boot_from_eeprom(padapter))
   EFUSE_ShadowMapUpdate(padapter, EFUSE_WIFI);
 }
}
