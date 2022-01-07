
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int SupportAbility; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int ODM_COMP_EDCA_TURBO ;
 int ODM_DBG_LOUD ;
 int ODM_MAC_EDCA_TURBO ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;
 int odm_EdcaTurboCheckCE (TYPE_1__*) ;

void odm_EdcaTurboCheck(void *pDM_VOID)
{




 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD,
       ("odm_EdcaTurboCheck ========================>\n"));

 if (!(pDM_Odm->SupportAbility & ODM_MAC_EDCA_TURBO))
  return;

 odm_EdcaTurboCheckCE(pDM_Odm);
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD,
       ("<========================odm_EdcaTurboCheck\n"));
}
