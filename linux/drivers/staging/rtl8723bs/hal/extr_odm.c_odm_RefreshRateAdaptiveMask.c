
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int SupportAbility; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int ODM_BB_RA_MASK ;
 int ODM_COMP_RA_MASK ;
 int ODM_DBG_TRACE ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;
 int odm_RefreshRateAdaptiveMaskCE (TYPE_1__*) ;

void odm_RefreshRateAdaptiveMask(PDM_ODM_T pDM_Odm)
{

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("odm_RefreshRateAdaptiveMask()---------->\n"));
 if (!(pDM_Odm->SupportAbility & ODM_BB_RA_MASK)) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("odm_RefreshRateAdaptiveMask(): Return cos not supported\n"));
  return;
 }
 odm_RefreshRateAdaptiveMaskCE(pDM_Odm);
}
