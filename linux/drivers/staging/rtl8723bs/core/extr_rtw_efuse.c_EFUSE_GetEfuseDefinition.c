
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* EFUSEGetEfuseDefinition ) (struct adapter*,int ,int ,void*,int) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*,int ,int ,void*,int) ;

void
EFUSE_GetEfuseDefinition(
 struct adapter *padapter,
 u8 efuseType,
 u8 type,
 void *pOut,
 bool bPseudoTest
 )
{
 padapter->HalFunc.EFUSEGetEfuseDefinition(padapter, efuseType, type, pOut, bPseudoTest);
}
