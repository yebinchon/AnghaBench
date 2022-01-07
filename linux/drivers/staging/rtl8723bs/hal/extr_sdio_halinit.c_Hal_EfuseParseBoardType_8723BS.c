
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_com_data {int BoardType; } ;
struct adapter {int dummy; } ;


 int EEPROM_DEFAULT_BOARD_OPTION ;
 size_t EEPROM_RF_BOARD_OPTION_8723B ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_info_ ;
 int _module_hci_hal_init_c_ ;

__attribute__((used)) static void Hal_EfuseParseBoardType_8723BS(
 struct adapter *padapter, u8 *hwinfo, bool AutoLoadFail
)
{
 struct hal_com_data *pHalData = GET_HAL_DATA(padapter);

 if (!AutoLoadFail) {
  pHalData->BoardType = (hwinfo[EEPROM_RF_BOARD_OPTION_8723B] & 0xE0) >> 5;
  if (pHalData->BoardType == 0xFF)
   pHalData->BoardType = (EEPROM_DEFAULT_BOARD_OPTION & 0xE0) >> 5;
 } else
  pHalData->BoardType = 0;
 RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("Board Type: 0x%2x\n", pHalData->BoardType));
}
