
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* SetHalDefVarHandler ) (struct adapter*,int,void*) ;} ;
struct adapter {TYPE_1__ HalFunc; } ;
typedef enum HAL_DEF_VARIABLE { ____Placeholder_HAL_DEF_VARIABLE } HAL_DEF_VARIABLE ;


 int _FAIL ;
 int stub1 (struct adapter*,int,void*) ;

u8 rtw_hal_set_def_var(struct adapter *padapter, enum HAL_DEF_VARIABLE eVariable, void *pValue)
{
 if (padapter->HalFunc.SetHalDefVarHandler)
  return padapter->HalFunc.SetHalDefVarHandler(padapter, eVariable, pValue);
 return _FAIL;
}
