
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef TYPE_1__* pDIG_T ;
struct TYPE_6__ {int IGIBackup; int CurIGValue; } ;
struct TYPE_7__ {int SupportAbility; int TxHangFlg; TYPE_1__ DM_DigTable; } ;
typedef TYPE_2__* PDM_ODM_T ;
typedef int ODM_Pause_DIG_TYPE ;


 int ODM_BB_ADAPTIVITY ;
 int ODM_BB_DIG ;
 int ODM_BB_FA_CNT ;
 int ODM_CMNINFO_ABILITY ;
 int ODM_COMP_DIG ;
 int ODM_CmnInfoUpdate (TYPE_2__*,int ,int) ;
 int ODM_DBG_LOUD ;


 int ODM_RT_TRACE (TYPE_2__*,int ,int ,char*) ;
 int ODM_Write_DIG (TYPE_2__*,int ) ;

void odm_PauseDIG(
 void *pDM_VOID,
 ODM_Pause_DIG_TYPE PauseType,
 u8 IGIValue
)
{
 PDM_ODM_T pDM_Odm = (PDM_ODM_T)pDM_VOID;
 pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;
 static bool bPaused;

 ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG() =========>\n"));

 if (
  (pDM_Odm->SupportAbility & ODM_BB_ADAPTIVITY) &&
  pDM_Odm->TxHangFlg == 1
 ) {
  ODM_RT_TRACE(
   pDM_Odm,
   ODM_COMP_DIG,
   ODM_DBG_LOUD,
   ("odm_PauseDIG(): Dynamic adjust threshold in progress !!\n")
  );
  return;
 }

 if (
  !bPaused && (!(pDM_Odm->SupportAbility & ODM_BB_DIG) ||
  !(pDM_Odm->SupportAbility & ODM_BB_FA_CNT))
 ){
  ODM_RT_TRACE(
   pDM_Odm,
   ODM_COMP_DIG,
   ODM_DBG_LOUD,
   ("odm_PauseDIG(): Return: SupportAbility ODM_BB_DIG or ODM_BB_FA_CNT is disabled\n")
  );
  return;
 }

 switch (PauseType) {

 case 129:

  ODM_CmnInfoUpdate(pDM_Odm, ODM_CMNINFO_ABILITY, pDM_Odm->SupportAbility & (~ODM_BB_DIG));
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Pause DIG !!\n"));


  if (!bPaused) {
   pDM_DigTable->IGIBackup = pDM_DigTable->CurIGValue;
   bPaused = 1;
  }
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Backup IGI  = 0x%x\n", pDM_DigTable->IGIBackup));


  ODM_Write_DIG(pDM_Odm, IGIValue);
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Write new IGI = 0x%x\n", IGIValue));
  break;


 case 128:
  if (bPaused) {

   ODM_Write_DIG(pDM_Odm, pDM_DigTable->IGIBackup);
   bPaused = 0;
   ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Write original IGI = 0x%x\n", pDM_DigTable->IGIBackup));


   ODM_CmnInfoUpdate(pDM_Odm, ODM_CMNINFO_ABILITY, pDM_Odm->SupportAbility | ODM_BB_DIG);
   ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Resume DIG !!\n"));
  }
  break;

 default:
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_PauseDIG(): Wrong  type !!\n"));
  break;
 }
}
