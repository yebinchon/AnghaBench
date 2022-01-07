
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct adapter {int dummy; } ;


 int EFUSE_GetEfuseDefinition (struct adapter*,int ,int ,void*,int) ;
 int Efuse_PowerSwitch (struct adapter*,int,int) ;
 int TYPE_EFUSE_MAP_LEN ;
 int efuse_ReadEFuse (struct adapter*,int ,int ,scalar_t__,int *,int) ;

void
Efuse_ReadAllMap(
 struct adapter *padapter,
 u8 efuseType,
 u8 *Efuse,
 bool bPseudoTest)
{
 u16 mapLen = 0;

 Efuse_PowerSwitch(padapter, 0, 1);

 EFUSE_GetEfuseDefinition(padapter, efuseType, TYPE_EFUSE_MAP_LEN, (void *)&mapLen, bPseudoTest);

 efuse_ReadEFuse(padapter, efuseType, 0, mapLen, Efuse, bPseudoTest);

 Efuse_PowerSwitch(padapter, 0, 0);
}
