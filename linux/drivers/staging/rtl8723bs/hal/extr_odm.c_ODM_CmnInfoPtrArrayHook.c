
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_3__ {int * pODM_StaInfo; } ;
typedef int PSTA_INFO_T ;
typedef TYPE_1__* PDM_ODM_T ;
typedef int ODM_CMNINFO_E ;




void ODM_CmnInfoPtrArrayHook(
 PDM_ODM_T pDM_Odm,
 ODM_CMNINFO_E CmnInfo,
 u16 Index,
 void *pValue
)
{



 switch (CmnInfo) {



 case 128:
  pDM_Odm->pODM_StaInfo[Index] = (PSTA_INFO_T)pValue;
  break;

 default:

  break;
 }

}
