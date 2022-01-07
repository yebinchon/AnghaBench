
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct eeprom_priv {int efuse_eeprom_data; scalar_t__ bautoload_fail_flag; } ;
struct adapter {int dummy; } ;


 int EFUSE_GetEfuseDefinition (struct adapter*,int ,int ,void*,int) ;
 int Efuse_ReadAllMap (struct adapter*,int ,int ,int) ;
 struct eeprom_priv* GET_EEPROM_EFUSE_PRIV (struct adapter*) ;
 int TYPE_EFUSE_MAP_LEN ;
 int memset (int ,int,scalar_t__) ;

void EFUSE_ShadowMapUpdate(
 struct adapter *padapter,
 u8 efuseType,
 bool bPseudoTest)
{
 struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);
 u16 mapLen = 0;

 EFUSE_GetEfuseDefinition(padapter, efuseType, TYPE_EFUSE_MAP_LEN, (void *)&mapLen, bPseudoTest);

 if (pEEPROM->bautoload_fail_flag)
  memset(pEEPROM->efuse_eeprom_data, 0xFF, mapLen);
 else
  Efuse_ReadAllMap(padapter, efuseType, pEEPROM->efuse_eeprom_data, bPseudoTest);



}
