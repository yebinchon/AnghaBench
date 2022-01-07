
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct odm_dm_struct {int SupportAbility; } ;


 int ODM_BB_RSSI_MONITOR ;
 int odm_RSSIMonitorCheckCE (struct odm_dm_struct*) ;

void odm_RSSIMonitorCheck(struct odm_dm_struct *pDM_Odm)
{
 if (!(pDM_Odm->SupportAbility & ODM_BB_RSSI_MONITOR))
  return;






 odm_RSSIMonitorCheckCE(pDM_Odm);
}
