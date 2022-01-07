
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct eeprom_priv {int * efuse_eeprom_data; } ;
struct adapter {int dummy; } ;


 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;

__attribute__((used)) static void
efuse_ShadowRead1Byte(
struct adapter *padapter,
u16 Offset,
 u8 *Value)
{
 struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);

 *Value = pEEPROM->efuse_eeprom_data[Offset];

}
