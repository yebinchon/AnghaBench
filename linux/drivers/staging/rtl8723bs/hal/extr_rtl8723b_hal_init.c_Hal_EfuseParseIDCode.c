
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct eeprom_priv {int bautoload_fail_flag; } ;
struct adapter {int dummy; } ;
typedef int __le16 ;


 int DBG_8192C (char*,scalar_t__) ;
 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;
 scalar_t__ RTL_EEPROM_ID ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_notice_ ;
 int _module_hal_init_c_ ;
 scalar_t__ le16_to_cpu (int ) ;

void Hal_EfuseParseIDCode(struct adapter *padapter, u8 *hwinfo)
{
 struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);

 u16 EEPROMId;



 EEPROMId = le16_to_cpu(*((__le16 *)hwinfo));
 if (EEPROMId != RTL_EEPROM_ID) {
  DBG_8192C("EEPROM ID(%#x) is invalid!!\n", EEPROMId);
  pEEPROM->bautoload_fail_flag = 1;
 } else
  pEEPROM->bautoload_fail_flag = 0;

 RT_TRACE(_module_hal_init_c_, _drv_notice_, ("EEPROM ID = 0x%04x\n", EEPROMId));
}
