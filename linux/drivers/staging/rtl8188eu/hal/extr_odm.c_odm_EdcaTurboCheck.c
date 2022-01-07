
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct odm_dm_struct {int SupportAbility; } ;


 int ODM_COMP_EDCA_TURBO ;
 int ODM_DBG_LOUD ;
 int ODM_MAC_EDCA_TURBO ;
 int ODM_RT_TRACE (struct odm_dm_struct*,int ,int ,char*) ;
 int odm_EdcaTurboCheckCE (struct odm_dm_struct*) ;

void odm_EdcaTurboCheck(struct odm_dm_struct *pDM_Odm)
{



 ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD, ("odm_EdcaTurboCheck========================>\n"));

 if (!(pDM_Odm->SupportAbility & ODM_MAC_EDCA_TURBO))
  return;

 odm_EdcaTurboCheckCE(pDM_Odm);
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_EDCA_TURBO, ODM_DBG_LOUD, ("<========================odm_EdcaTurboCheck\n"));
}
