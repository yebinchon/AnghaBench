
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct odm_phy_info {int dummy; } ;
struct odm_packet_info {int dummy; } ;
typedef int PDM_ODM_T ;


 int ODM_PhyStatusQuery_92CSeries (int ,struct odm_phy_info*,int *,struct odm_packet_info*) ;

void ODM_PhyStatusQuery(
 PDM_ODM_T pDM_Odm,
 struct odm_phy_info *pPhyInfo,
 u8 *pPhyStatus,
 struct odm_packet_info *pPktinfo
)
{

 ODM_PhyStatusQuery_92CSeries(pDM_Odm, pPhyInfo, pPhyStatus, pPktinfo);
}
