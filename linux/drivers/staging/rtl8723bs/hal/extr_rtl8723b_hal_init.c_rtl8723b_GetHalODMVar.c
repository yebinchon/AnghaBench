
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;
typedef enum HAL_ODM_VARIABLE { ____Placeholder_HAL_ODM_VARIABLE } HAL_ODM_VARIABLE ;


 int GetHalODMVar (struct adapter*,int,void*,void*) ;

__attribute__((used)) static void rtl8723b_GetHalODMVar(
 struct adapter *Adapter,
 enum HAL_ODM_VARIABLE eVariable,
 void *pValue1,
 void *pValue2
)
{
 GetHalODMVar(Adapter, eVariable, pValue1, pValue2);
}
