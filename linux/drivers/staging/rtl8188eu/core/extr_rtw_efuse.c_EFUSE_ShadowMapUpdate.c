
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eeprom_priv {int efuse_eeprom_data; scalar_t__ bautoload_fail_flag; } ;
struct adapter {int dummy; } ;


 int EFUSE_MAP_LEN_88E ;
 int Efuse_ReadAllMap (struct adapter*,int ,int ) ;
 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;
 int memset (int ,int,int ) ;

void EFUSE_ShadowMapUpdate(struct adapter *pAdapter, u8 efuseType)
{
 struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(pAdapter);

 if (pEEPROM->bautoload_fail_flag)
  memset(pEEPROM->efuse_eeprom_data, 0xFF, EFUSE_MAP_LEN_88E);
 else
  Efuse_ReadAllMap(pAdapter, efuseType, pEEPROM->efuse_eeprom_data);
}
