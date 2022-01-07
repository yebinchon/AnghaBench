
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int* mp_mode; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int ODM_CfoTrackingInit (TYPE_1__*) ;
 int ODM_ClearTxPowerTrackingState (TYPE_1__*) ;
 int ODM_EdcaTurboInit (TYPE_1__*) ;
 int odm_AdaptivityInit (TYPE_1__*) ;
 int odm_CmnInfoInit_Debug (TYPE_1__*) ;
 int odm_CommonInfoSelfInit (TYPE_1__*) ;
 int odm_DIGInit (TYPE_1__*) ;
 int odm_DynamicBBPowerSavingInit (TYPE_1__*) ;
 int odm_DynamicTxPowerInit (TYPE_1__*) ;
 int odm_NHMCounterStatisticsInit (TYPE_1__*) ;
 int odm_PathDiversityInit (TYPE_1__*) ;
 int odm_RSSIMonitorInit (TYPE_1__*) ;
 int odm_RateAdaptiveMaskInit (TYPE_1__*) ;
 int odm_SwAntDetectInit (TYPE_1__*) ;
 int odm_TXPowerTrackingInit (TYPE_1__*) ;

void ODM_DMInit(PDM_ODM_T pDM_Odm)
{

 odm_CommonInfoSelfInit(pDM_Odm);
 odm_CmnInfoInit_Debug(pDM_Odm);
 odm_DIGInit(pDM_Odm);
 odm_NHMCounterStatisticsInit(pDM_Odm);
 odm_AdaptivityInit(pDM_Odm);
 odm_RateAdaptiveMaskInit(pDM_Odm);
 ODM_CfoTrackingInit(pDM_Odm);
 ODM_EdcaTurboInit(pDM_Odm);
 odm_RSSIMonitorInit(pDM_Odm);
 odm_TXPowerTrackingInit(pDM_Odm);

 ODM_ClearTxPowerTrackingState(pDM_Odm);

 if (*(pDM_Odm->mp_mode) != 1)
  odm_PathDiversityInit(pDM_Odm);

 odm_DynamicBBPowerSavingInit(pDM_Odm);
 odm_DynamicTxPowerInit(pDM_Odm);

 odm_SwAntDetectInit(pDM_Odm);
}
