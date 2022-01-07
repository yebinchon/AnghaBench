
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {int EEPROMVersion; } ;
struct adapter {int dummy; } ;


 size_t EEPROM_VERSION_8723B ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_notice_ ;
 int _module_hci_hal_init_c_ ;

void Hal_EfuseParseEEPROMVer_8723B(
 struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);


 if (!AutoLoadFail)
  pHalData->EEPROMVersion = hwinfo[EEPROM_VERSION_8723B];
 else
  pHalData->EEPROMVersion = 1;
 RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("Hal_EfuseParseEEPROMVer(), EEVer = %d\n",
  pHalData->EEPROMVersion));
}
