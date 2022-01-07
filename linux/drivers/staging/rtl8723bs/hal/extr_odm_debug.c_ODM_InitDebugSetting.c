
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ DebugComponents; int DebugLevel; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int ODM_DBG_LOUD ;

void ODM_InitDebugSetting(PDM_ODM_T pDM_Odm)
{
 pDM_Odm->DebugLevel = ODM_DBG_LOUD;

 pDM_Odm->DebugComponents =
0;
}
