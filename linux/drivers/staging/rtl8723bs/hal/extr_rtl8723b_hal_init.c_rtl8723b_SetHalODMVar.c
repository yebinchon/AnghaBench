
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
typedef enum HAL_ODM_VARIABLE { ____Placeholder_HAL_ODM_VARIABLE } HAL_ODM_VARIABLE ;


 int SetHalODMVar (struct adapter*,int,void*,int) ;

__attribute__((used)) static void rtl8723b_SetHalODMVar(
 struct adapter *Adapter,
 enum HAL_ODM_VARIABLE eVariable,
 void *pValue1,
 bool bSet
)
{
 SetHalODMVar(Adapter, eVariable, pValue1, bSet);
}
