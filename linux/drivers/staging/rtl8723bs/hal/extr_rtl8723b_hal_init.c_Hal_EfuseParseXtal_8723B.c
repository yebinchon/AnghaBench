
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {int CrystalCap; } ;
struct adapter {int dummy; } ;


 void* EEPROM_Default_CrystalCap_8723B ;
 size_t EEPROM_XTAL_8723B ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_notice_ ;
 int _module_hci_hal_init_c_ ;

void Hal_EfuseParseXtal_8723B(
 struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);


 if (!AutoLoadFail) {
  pHalData->CrystalCap = hwinfo[EEPROM_XTAL_8723B];
  if (pHalData->CrystalCap == 0xFF)
   pHalData->CrystalCap = EEPROM_Default_CrystalCap_8723B;
 } else
  pHalData->CrystalCap = EEPROM_Default_CrystalCap_8723B;

 RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("EEPROM CrystalCap: 0x%2x\n", pHalData->CrystalCap));
}
