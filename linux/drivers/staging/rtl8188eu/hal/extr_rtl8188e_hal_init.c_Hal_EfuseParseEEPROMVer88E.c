
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_data_8188e {int EEPROMVersion; } ;
struct adapter {struct hal_data_8188e* HalData; } ;


 int EEPROM_Default_Version ;
 size_t EEPROM_VERSION_88E ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_hci_hal_init_c_ ;

void Hal_EfuseParseEEPROMVer88E(struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail)
{
 struct hal_data_8188e *pHalData = padapter->HalData;

 if (!AutoLoadFail) {
  pHalData->EEPROMVersion = hwinfo[EEPROM_VERSION_88E];
  if (pHalData->EEPROMVersion == 0xFF)
   pHalData->EEPROMVersion = EEPROM_Default_Version;
 } else {
  pHalData->EEPROMVersion = 1;
 }
 RT_TRACE(_module_hci_hal_init_c_, _drv_info_,
   ("Hal_EfuseParseEEPROMVer(), EEVer = %d\n",
   pHalData->EEPROMVersion));
}
