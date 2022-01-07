
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int EEPROMRFGainOffset; int EEPROMRFGainVal; } ;
struct adapter {TYPE_1__ eeprompriv; } ;


 int DBG_871X (char*,int) ;
 size_t EEPROM_RF_GAIN_OFFSET ;
 int EEPROM_RF_GAIN_VAL ;
 int EFUSE_Read1Byte (struct adapter*,int ) ;

void Hal_ReadRFGainOffset(
 struct adapter *Adapter, u8 *PROMContent, bool AutoloadFail
)
{




 if (!AutoloadFail) {
  Adapter->eeprompriv.EEPROMRFGainOffset = PROMContent[EEPROM_RF_GAIN_OFFSET];
  DBG_871X("AutoloadFail =%x,\n", AutoloadFail);
  Adapter->eeprompriv.EEPROMRFGainVal = EFUSE_Read1Byte(Adapter, EEPROM_RF_GAIN_VAL);
  DBG_871X("Adapter->eeprompriv.EEPROMRFGainVal =%x\n", Adapter->eeprompriv.EEPROMRFGainVal);
 } else {
  Adapter->eeprompriv.EEPROMRFGainOffset = 0;
  Adapter->eeprompriv.EEPROMRFGainVal = 0xFF;
  DBG_871X("else AutoloadFail =%x,\n", AutoloadFail);
 }
 DBG_871X("EEPRORFGainOffset = 0x%02x\n", Adapter->eeprompriv.EEPROMRFGainOffset);
}
