
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hal_com_data {scalar_t__ EEPROMCustomerID; } ;
struct adapter {int dummy; } ;


 size_t EEPROM_CustomID_8723B ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_notice_ ;
 int _module_hci_hal_init_c_ ;

void Hal_EfuseParseCustomerID_8723B(
 struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);


 if (!AutoLoadFail)
  pHalData->EEPROMCustomerID = hwinfo[EEPROM_CustomID_8723B];
 else
  pHalData->EEPROMCustomerID = 0;

 RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("EEPROM Customer ID: 0x%2x\n", pHalData->EEPROMCustomerID));
}
