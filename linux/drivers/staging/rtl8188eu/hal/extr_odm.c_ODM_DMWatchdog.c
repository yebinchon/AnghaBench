
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct odm_dm_struct {scalar_t__ AntDivType; scalar_t__* pbPowerSaving; } ;


 scalar_t__ CGCS_RX_HW_ANTDIV ;
 scalar_t__ CG_TRX_HW_ANTDIV ;
 scalar_t__ CG_TRX_SMART_ANTDIV ;
 int ODM_TXPowerTrackingCheck (struct odm_dm_struct*) ;
 int odm_CCKPacketDetectionThresh (struct odm_dm_struct*) ;
 int odm_CmnInfoHook_Debug (struct odm_dm_struct*) ;
 int odm_CmnInfoUpdate_Debug (struct odm_dm_struct*) ;
 int odm_CommonInfoSelfUpdate (struct odm_dm_struct*) ;
 int odm_DIG (struct odm_dm_struct*) ;
 int odm_EdcaTurboCheck (struct odm_dm_struct*) ;
 int odm_FalseAlarmCounterStatistics (struct odm_dm_struct*) ;
 int odm_HwAntDiv (struct odm_dm_struct*) ;
 int odm_RSSIMonitorCheck (struct odm_dm_struct*) ;
 int odm_RefreshRateAdaptiveMask (struct odm_dm_struct*) ;

void ODM_DMWatchdog(struct odm_dm_struct *pDM_Odm)
{

 odm_CmnInfoHook_Debug(pDM_Odm);
 odm_CmnInfoUpdate_Debug(pDM_Odm);
 odm_CommonInfoSelfUpdate(pDM_Odm);
 odm_FalseAlarmCounterStatistics(pDM_Odm);
 odm_RSSIMonitorCheck(pDM_Odm);


 odm_DIG(pDM_Odm);
 odm_CCKPacketDetectionThresh(pDM_Odm);

 if (*(pDM_Odm->pbPowerSaving))
  return;

 odm_RefreshRateAdaptiveMask(pDM_Odm);

 if ((pDM_Odm->AntDivType == CG_TRX_HW_ANTDIV) ||
     (pDM_Odm->AntDivType == CGCS_RX_HW_ANTDIV) ||
     (pDM_Odm->AntDivType == CG_TRX_SMART_ANTDIV))
  odm_HwAntDiv(pDM_Odm);

 ODM_TXPowerTrackingCheck(pDM_Odm);
 odm_EdcaTurboCheck(pDM_Odm);
}
