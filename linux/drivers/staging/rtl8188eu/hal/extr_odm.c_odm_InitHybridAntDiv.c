
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct odm_dm_struct {int SupportAbility; } ;


 int ODM_BB_ANT_DIV ;
 int ODM_COMP_ANT_DIV ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (struct odm_dm_struct*,int ,int ,char*) ;
 int rtl88eu_dm_antenna_div_init (struct odm_dm_struct*) ;

void odm_InitHybridAntDiv(struct odm_dm_struct *pDM_Odm)
{
 if (!(pDM_Odm->SupportAbility & ODM_BB_ANT_DIV)) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_ANT_DIV, ODM_DBG_LOUD, ("Return: Not Support HW AntDiv\n"));
  return;
 }

 rtl88eu_dm_antenna_div_init(pDM_Odm);
}
