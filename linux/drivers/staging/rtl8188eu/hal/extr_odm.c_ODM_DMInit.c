
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct odm_dm_struct {scalar_t__ AntDivType; } ;


 scalar_t__ CGCS_RX_HW_ANTDIV ;
 scalar_t__ CG_TRX_HW_ANTDIV ;
 scalar_t__ CG_TRX_SMART_ANTDIV ;
 int ODM_EdcaTurboInit (struct odm_dm_struct*) ;
 int ODM_RAInfo_Init_all (struct odm_dm_struct*) ;
 int odm_CmnInfoInit_Debug (struct odm_dm_struct*) ;
 int odm_CommonInfoSelfInit (struct odm_dm_struct*) ;
 int odm_DIGInit (struct odm_dm_struct*) ;
 int odm_DynamicTxPowerInit (struct odm_dm_struct*) ;
 int odm_InitHybridAntDiv (struct odm_dm_struct*) ;
 int odm_RateAdaptiveMaskInit (struct odm_dm_struct*) ;
 int odm_TXPowerTrackingInit (struct odm_dm_struct*) ;

void ODM_DMInit(struct odm_dm_struct *pDM_Odm)
{

 odm_CommonInfoSelfInit(pDM_Odm);
 odm_CmnInfoInit_Debug(pDM_Odm);
 odm_DIGInit(pDM_Odm);
 odm_RateAdaptiveMaskInit(pDM_Odm);

 odm_DynamicTxPowerInit(pDM_Odm);
 odm_TXPowerTrackingInit(pDM_Odm);
 ODM_EdcaTurboInit(pDM_Odm);
 ODM_RAInfo_Init_all(pDM_Odm);
 if ((pDM_Odm->AntDivType == CG_TRX_HW_ANTDIV) ||
     (pDM_Odm->AntDivType == CGCS_RX_HW_ANTDIV) ||
     (pDM_Odm->AntDivType == CG_TRX_SMART_ANTDIV))
  odm_InitHybridAntDiv(pDM_Odm);
}
