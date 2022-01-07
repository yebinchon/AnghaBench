
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SupportAbility; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int ODM_BB_PATH_DIV ;
 int ODM_COMP_PATH_DIV ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;

void odm_PathDiversityInit(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;

 if (!(pDM_Odm->SupportAbility & ODM_BB_PATH_DIV))
  ODM_RT_TRACE(
   pDM_Odm,
   ODM_COMP_PATH_DIV,
   ODM_DBG_LOUD,
   ("Return: Not Support PathDiv\n")
  );
}
