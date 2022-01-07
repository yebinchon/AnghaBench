
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct eeprom_priv {size_t* efuse_eeprom_data; } ;
struct adapter {int dummy; } ;


 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;

__attribute__((used)) static void
efuse_ShadowRead2Byte(
struct adapter *padapter,
u16 Offset,
 u16 *Value)
{
 struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);

 *Value = pEEPROM->efuse_eeprom_data[Offset];
 *Value |= pEEPROM->efuse_eeprom_data[Offset+1]<<8;

}
