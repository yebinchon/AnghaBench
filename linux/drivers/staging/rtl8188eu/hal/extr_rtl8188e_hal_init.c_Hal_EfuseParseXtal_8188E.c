
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hal_data_8188e {int CrystalCap; } ;
struct adapter {struct hal_data_8188e* HalData; } ;


 int DBG_88E (char*,int) ;
 void* EEPROM_Default_CrystalCap_88E ;
 size_t EEPROM_XTAL_88E ;

void Hal_EfuseParseXtal_8188E(struct adapter *pAdapter, u8 *hwinfo, bool AutoLoadFail)
{
 struct hal_data_8188e *pHalData = pAdapter->HalData;

 if (!AutoLoadFail) {
  pHalData->CrystalCap = hwinfo[EEPROM_XTAL_88E];
  if (pHalData->CrystalCap == 0xFF)
   pHalData->CrystalCap = EEPROM_Default_CrystalCap_88E;
 } else {
  pHalData->CrystalCap = EEPROM_Default_CrystalCap_88E;
 }
 DBG_88E("CrystalCap: 0x%2x\n", pHalData->CrystalCap);
}
