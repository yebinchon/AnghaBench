
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_16__ ;


typedef TYPE_2__* pDIG_T ;
struct TYPE_22__ {scalar_t__ NumQryBeaconPkt; } ;
struct TYPE_23__ {int CurIGValue; } ;
struct TYPE_24__ {int* pbPowerSaving; TYPE_1__ PhyDbgInfo; TYPE_2__ DM_DigTable; int Adapter; int RSSI_Min; } ;
struct TYPE_21__ {scalar_t__ pwr_mode; } ;
typedef TYPE_3__* PDM_ODM_T ;


 int ODM_COMP_DIG ;
 int ODM_CfoTracking (TYPE_3__*) ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (TYPE_3__*,int ,int ,char*) ;
 int ODM_TXPowerTrackingCheck (TYPE_3__*) ;
 scalar_t__ PS_MODE_ACTIVE ;
 TYPE_16__* adapter_to_pwrctl (int ) ;
 int odm_Adaptivity (TYPE_3__*,int ) ;
 int odm_BasicDbgMessage (TYPE_3__*) ;
 int odm_CCKPacketDetectionThresh (TYPE_3__*) ;
 int odm_CommonInfoSelfUpdate (TYPE_3__*) ;
 int odm_DIG (TYPE_3__*) ;
 int odm_DIGbyRSSI_LPS (TYPE_3__*) ;
 int odm_EdcaTurboCheck (TYPE_3__*) ;
 int odm_FalseAlarmCounterStatistics (TYPE_3__*) ;
 int odm_NHMCounterStatistics (TYPE_3__*) ;
 int odm_PathDiversity (TYPE_3__*) ;
 int odm_RSSIMonitorCheck (TYPE_3__*) ;
 int odm_RefreshRateAdaptiveMask (TYPE_3__*) ;

void ODM_DMWatchdog(PDM_ODM_T pDM_Odm)
{
 odm_CommonInfoSelfUpdate(pDM_Odm);
 odm_BasicDbgMessage(pDM_Odm);
 odm_FalseAlarmCounterStatistics(pDM_Odm);
 odm_NHMCounterStatistics(pDM_Odm);
 ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("odm_DIG(): RSSI = 0x%x\n", pDM_Odm->RSSI_Min));

 odm_RSSIMonitorCheck(pDM_Odm);





 if ((adapter_to_pwrctl(pDM_Odm->Adapter)->pwr_mode != PS_MODE_ACTIVE)




 ) {
   ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("----Step1: odm_DIG is in LPS mode\n"));
   ODM_RT_TRACE(pDM_Odm, ODM_COMP_DIG, ODM_DBG_LOUD, ("---Step2: 8723AS is in LPS mode\n"));
   odm_DIGbyRSSI_LPS(pDM_Odm);
 } else
  odm_DIG(pDM_Odm);

 {
  pDIG_T pDM_DigTable = &pDM_Odm->DM_DigTable;

  odm_Adaptivity(pDM_Odm, pDM_DigTable->CurIGValue);
 }
 odm_CCKPacketDetectionThresh(pDM_Odm);

 if (*(pDM_Odm->pbPowerSaving) == 1)
  return;


 odm_RefreshRateAdaptiveMask(pDM_Odm);
 odm_EdcaTurboCheck(pDM_Odm);
 odm_PathDiversity(pDM_Odm);
 ODM_CfoTracking(pDM_Odm);

 ODM_TXPowerTrackingCheck(pDM_Odm);





 pDM_Odm->PhyDbgInfo.NumQryBeaconPkt = 0;
}
