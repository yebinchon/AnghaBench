
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int UndecoratedSmoothedPWDB; } ;
struct sta_info {int rssi_level; TYPE_1__ rssi_stat; } ;
struct odm_dm_struct {struct sta_info** pODM_StaInfo; int bUseRAMask; struct adapter* Adapter; } ;
struct adapter {scalar_t__ bDriverStopped; } ;


 scalar_t__ IS_STA_VALID (struct sta_info*) ;
 size_t ODM_ASSOCIATE_ENTRY_NUM ;
 int ODM_COMP_RA_MASK ;
 int ODM_DBG_LOUD ;
 int ODM_DBG_TRACE ;
 scalar_t__ ODM_RAStateCheck (struct odm_dm_struct*,int ,int,int *) ;
 int ODM_RT_TRACE (struct odm_dm_struct*,int ,int ,char*) ;
 int rtw_hal_update_ra_mask (struct adapter*,size_t,int ) ;

void odm_RefreshRateAdaptiveMaskCE(struct odm_dm_struct *pDM_Odm)
{
 u8 i;
 struct adapter *pAdapter = pDM_Odm->Adapter;

 if (pAdapter->bDriverStopped) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_TRACE, ("<---- odm_RefreshRateAdaptiveMask(): driver is going to unload\n"));
  return;
 }

 if (!pDM_Odm->bUseRAMask) {
  ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD, ("<---- odm_RefreshRateAdaptiveMask(): driver does not control rate adaptive mask\n"));
  return;
 }

 for (i = 0; i < ODM_ASSOCIATE_ENTRY_NUM; i++) {
  struct sta_info *pstat = pDM_Odm->pODM_StaInfo[i];

  if (IS_STA_VALID(pstat)) {
   if (ODM_RAStateCheck(pDM_Odm, pstat->rssi_stat.UndecoratedSmoothedPWDB, 0, &pstat->rssi_level)) {
    ODM_RT_TRACE(pDM_Odm, ODM_COMP_RA_MASK, ODM_DBG_LOUD,
          ("RSSI:%d, RSSI_LEVEL:%d\n",
          pstat->rssi_stat.UndecoratedSmoothedPWDB, pstat->rssi_level));
    rtw_hal_update_ra_mask(pAdapter, i, pstat->rssi_level);
   }
  }
 }
}
