
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int (* EfuseGetCurrentSize ) (struct adapter*,int ,int) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;


 int stub1 (struct adapter*,int ,int) ;

u16
Efuse_GetCurrentSize(
 struct adapter *padapter,
 u8 efuseType,
 bool bPseudoTest)
{
 return padapter->HalFunc.EfuseGetCurrentSize(padapter, efuseType,
           bPseudoTest);
}
