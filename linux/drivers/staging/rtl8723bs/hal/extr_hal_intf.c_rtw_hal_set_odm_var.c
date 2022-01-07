
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* SetHalODMVarHandler ) (struct adapter*,int,void*,int) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;
typedef enum HAL_ODM_VARIABLE { ____Placeholder_HAL_ODM_VARIABLE } HAL_ODM_VARIABLE ;


 int stub1 (struct adapter*,int,void*,int) ;

void rtw_hal_set_odm_var(struct adapter *padapter, enum HAL_ODM_VARIABLE eVariable, void *pValue1, bool bSet)
{
 if (padapter->HalFunc.SetHalODMVarHandler)
  padapter->HalFunc.SetHalODMVarHandler(padapter, eVariable, pValue1, bSet);
}
