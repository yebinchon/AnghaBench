
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;
typedef enum HAL_DEF_VARIABLE { ____Placeholder_HAL_DEF_VARIABLE } HAL_DEF_VARIABLE ;


 int SetHalDefVar8723B (struct adapter*,int,void*) ;

__attribute__((used)) static u8 SetHalDefVar8723BSDIO(struct adapter *Adapter,
    enum HAL_DEF_VARIABLE eVariable, void *pValue)
{
 return SetHalDefVar8723B(Adapter, eVariable, pValue);
}
