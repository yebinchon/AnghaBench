
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct odm_dm_struct {int SupportAbility; } ;


 int ODM_BB_RA_MASK ;
 int odm_RefreshRateAdaptiveMaskCE (struct odm_dm_struct*) ;

void odm_RefreshRateAdaptiveMask(struct odm_dm_struct *pDM_Odm)
{
 if (!(pDM_Odm->SupportAbility & ODM_BB_RA_MASK))
  return;





 odm_RefreshRateAdaptiveMaskCE(pDM_Odm);
}
