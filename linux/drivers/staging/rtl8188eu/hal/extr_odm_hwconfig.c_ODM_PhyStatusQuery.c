
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct odm_phy_status_info {int dummy; } ;
struct odm_per_pkt_info {int dummy; } ;
struct odm_dm_struct {scalar_t__ RSSI_test; } ;


 int odm_Process_RSSIForDM (struct odm_dm_struct*,struct odm_phy_status_info*,struct odm_per_pkt_info*) ;
 int odm_RxPhyStatus92CSeries_Parsing (struct odm_dm_struct*,struct odm_phy_status_info*,int *,struct odm_per_pkt_info*) ;

void ODM_PhyStatusQuery(struct odm_dm_struct *dm_odm,
   struct odm_phy_status_info *pPhyInfo,
   u8 *pPhyStatus, struct odm_per_pkt_info *pPktinfo)
{
 odm_RxPhyStatus92CSeries_Parsing(dm_odm, pPhyInfo, pPhyStatus,
      pPktinfo);
 if (dm_odm->RSSI_test)
  ;
 else
  odm_Process_RSSIForDM(dm_odm, pPhyInfo, pPktinfo);
}
