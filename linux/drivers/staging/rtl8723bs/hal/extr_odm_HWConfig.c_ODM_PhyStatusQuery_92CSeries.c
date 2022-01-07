
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct odm_phy_info {int dummy; } ;
struct odm_packet_info {int dummy; } ;
struct TYPE_5__ {int RSSI_test; } ;
typedef TYPE_1__* PDM_ODM_T ;


 int odm_Process_RSSIForDM (TYPE_1__*,struct odm_phy_info*,struct odm_packet_info*) ;
 int odm_RxPhyStatus92CSeries_Parsing (TYPE_1__*,struct odm_phy_info*,int *,struct odm_packet_info*) ;

__attribute__((used)) static void ODM_PhyStatusQuery_92CSeries(
 PDM_ODM_T pDM_Odm,
 struct odm_phy_info *pPhyInfo,
 u8 *pPhyStatus,
 struct odm_packet_info *pPktinfo
)
{

 odm_RxPhyStatus92CSeries_Parsing(pDM_Odm, pPhyInfo, pPhyStatus, pPktinfo);

 if (!pDM_Odm->RSSI_test)
  odm_Process_RSSIForDM(pDM_Odm, pPhyInfo, pPktinfo);
}
