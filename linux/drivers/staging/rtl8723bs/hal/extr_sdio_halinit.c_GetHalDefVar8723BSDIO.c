
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;
typedef enum HAL_DEF_VARIABLE { ____Placeholder_HAL_DEF_VARIABLE } HAL_DEF_VARIABLE ;


 int GetHalDefVar8723B (struct adapter*,int,void*) ;



 int MAX_AMPDU_FACTOR_16K ;
 int _SUCCESS ;

__attribute__((used)) static u8 GetHalDefVar8723BSDIO(
 struct adapter *Adapter, enum HAL_DEF_VARIABLE eVariable, void *pValue
)
{
 u8 bResult = _SUCCESS;

 switch (eVariable) {
 case 129:
  break;
 case 130:
  break;
 case 128:


  *(u32 *)pValue = MAX_AMPDU_FACTOR_16K;
  break;
 default:
  bResult = GetHalDefVar8723B(Adapter, eVariable, pValue);
  break;
 }

 return bResult;
}
