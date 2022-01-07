
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;
typedef enum HAL_DEF_VARIABLE { ____Placeholder_HAL_DEF_VARIABLE } HAL_DEF_VARIABLE ;


 int SetHalDefVar (struct adapter*,int,void*) ;
 int _SUCCESS ;

u8 SetHalDefVar8723B(struct adapter *padapter, enum HAL_DEF_VARIABLE variable, void *pval)
{
 u8 bResult;

 bResult = _SUCCESS;

 switch (variable) {
 default:
  bResult = SetHalDefVar(padapter, variable, pval);
  break;
 }

 return bResult;
}
