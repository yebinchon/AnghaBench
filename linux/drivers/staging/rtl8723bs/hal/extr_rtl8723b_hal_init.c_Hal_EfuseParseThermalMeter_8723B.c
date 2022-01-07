
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {int EEPROMThermalMeter; int bAPKThermalMeterIgnore; } ;
struct adapter {int dummy; } ;


 void* EEPROM_Default_ThermalMeter_8723B ;
 size_t EEPROM_THERMAL_METER_8723B ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_notice_ ;
 int _module_hci_hal_init_c_ ;

void Hal_EfuseParseThermalMeter_8723B(
 struct adapter *padapter, u8 *PROMContent, u8 AutoLoadFail
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);





 if (!AutoLoadFail)
  pHalData->EEPROMThermalMeter = PROMContent[EEPROM_THERMAL_METER_8723B];
 else
  pHalData->EEPROMThermalMeter = EEPROM_Default_ThermalMeter_8723B;

 if ((pHalData->EEPROMThermalMeter == 0xff) || AutoLoadFail) {
  pHalData->bAPKThermalMeterIgnore = 1;
  pHalData->EEPROMThermalMeter = EEPROM_Default_ThermalMeter_8723B;
 }

 RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("EEPROM ThermalMeter = 0x%x\n", pHalData->EEPROMThermalMeter));
}
