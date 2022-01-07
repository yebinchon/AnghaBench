
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct hal_com_data {int * noise; } ;
struct adapter {int dummy; } ;
typedef int s16 ;
typedef enum HAL_ODM_VARIABLE { ____Placeholder_HAL_ODM_VARIABLE } HAL_ODM_VARIABLE ;


 int DBG_8192C (char*,size_t,int ) ;
 struct hal_com_data* GET_HAL_DATA (struct adapter*) ;


void GetHalODMVar(
 struct adapter *Adapter,
 enum HAL_ODM_VARIABLE eVariable,
 void *pValue1,
 void *pValue2
)
{
 switch (eVariable) {
 default:
  break;
 }
}
