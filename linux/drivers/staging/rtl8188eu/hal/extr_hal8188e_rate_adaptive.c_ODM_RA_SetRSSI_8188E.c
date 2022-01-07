
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct odm_ra_info {size_t RssiStaRA; } ;
struct odm_dm_struct {struct odm_ra_info* RAInfo; } ;


 size_t ASSOCIATE_ENTRY_NUM ;
 int ODM_COMP_RATE_ADAPTIVE ;
 int ODM_DBG_TRACE ;
 int ODM_RT_TRACE (struct odm_dm_struct*,int ,int ,char*) ;

void ODM_RA_SetRSSI_8188E(struct odm_dm_struct *dm_odm, u8 macid, u8 Rssi)
{
 struct odm_ra_info *pRaInfo = ((void*)0);

 if ((!dm_odm) || (macid >= ASSOCIATE_ENTRY_NUM))
  return;
 ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
       (" macid =%d Rssi =%d\n", macid, Rssi));

 pRaInfo = &dm_odm->RAInfo[macid];
 pRaInfo->RssiStaRA = Rssi;
}
