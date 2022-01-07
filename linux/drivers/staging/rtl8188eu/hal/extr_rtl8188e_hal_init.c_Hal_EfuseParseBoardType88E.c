
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_data_8188e {int BoardType; } ;
struct adapter {struct hal_data_8188e* HalData; } ;


 int DBG_88E (char*,int) ;
 size_t EEPROM_RF_BOARD_OPTION_88E ;

void Hal_EfuseParseBoardType88E(struct adapter *pAdapter, u8 *hwinfo, bool AutoLoadFail)
{
 struct hal_data_8188e *pHalData = pAdapter->HalData;

 if (!AutoLoadFail)
  pHalData->BoardType = (hwinfo[EEPROM_RF_BOARD_OPTION_88E]
     & 0xE0) >> 5;
 else
  pHalData->BoardType = 0;
 DBG_88E("Board Type: 0x%2x\n", pHalData->BoardType);
}
