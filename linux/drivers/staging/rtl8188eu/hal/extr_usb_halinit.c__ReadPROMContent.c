
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eeprom_priv {int EepromOrEfuse; int bautoload_fail_flag; } ;
struct adapter {int dummy; } ;


 int BOOT_FROM_EEPROM ;
 int DBG_88E (char*,char*,char*) ;
 int EEPROM_EN ;
 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;
 int Hal_InitPGData88E (struct adapter*) ;
 int REG_9346CR ;
 int readAdapterInfo_8188EU (struct adapter*) ;
 int usb_read8 (struct adapter*,int ) ;

__attribute__((used)) static void _ReadPROMContent(struct adapter *Adapter)
{
 struct eeprom_priv *eeprom = GET_EEPROM_EFUSE_PRIV(Adapter);
 u8 eeValue;


 eeValue = usb_read8(Adapter, REG_9346CR);
 eeprom->EepromOrEfuse = (eeValue & BOOT_FROM_EEPROM) ? 1 : 0;
 eeprom->bautoload_fail_flag = (eeValue & EEPROM_EN) ? 0 : 1;

 DBG_88E("Boot from %s, Autoload %s !\n", (eeprom->EepromOrEfuse ? "EEPROM" : "EFUSE"),
  (eeprom->bautoload_fail_flag ? "Fail" : "OK"));

 Hal_InitPGData88E(Adapter);
 readAdapterInfo_8188EU(Adapter);
}
