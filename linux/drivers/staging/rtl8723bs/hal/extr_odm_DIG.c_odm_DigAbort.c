
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SupportAbility; int bDMInitialGainEnable; scalar_t__* pbScanInProcess; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int ODM_BB_DIG ;
 int ODM_BB_FA_CNT ;
 int ODM_COMP_DIG ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_1__*,int ,int ,char*) ;

bool odm_DigAbort(void *pDM_VOID)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;


 if (!(pDM_Odm->SupportAbility & ODM_BB_FA_CNT)) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Return: SupportAbility ODM_BB_FA_CNT is disabled\n"));
  return 1;
 }


 if (!(pDM_Odm->SupportAbility & ODM_BB_DIG)) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Return: SupportAbility ODM_BB_DIG is disabled\n"));
  return 1;
 }


 if (*(pDM_Odm->pbScanInProcess)) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Return: In Scan Progress\n"));
  return 1;
 }


 if (pDM_Odm->bDMInitialGainEnable == 0) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): Return: PSD is Processing\n"));
  return 1;
 }

 return 0;
}
