
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct odm_ra_info {size_t RateID; size_t SGIEnable; int RateMask; } ;
struct odm_dm_struct {struct odm_ra_info* RAInfo; } ;


 size_t ASSOCIATE_ENTRY_NUM ;
 int ODM_COMP_RATE_ADAPTIVE ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (struct odm_dm_struct*,int ,int ,char*) ;
 int odm_ARFBRefresh_8188E (struct odm_dm_struct*,struct odm_ra_info*) ;

void ODM_RA_UpdateRateInfo_8188E(struct odm_dm_struct *dm_odm, u8 macid, u8 RateID, u32 RateMask, u8 SGIEnable)
{
 struct odm_ra_info *pRaInfo = ((void*)0);

 if ((!dm_odm) || (macid >= ASSOCIATE_ENTRY_NUM))
  return;
 ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
       ("macid =%d RateID = 0x%x RateMask = 0x%x SGIEnable =%d\n",
       macid, RateID, RateMask, SGIEnable));

 pRaInfo = &dm_odm->RAInfo[macid];
 pRaInfo->RateID = RateID;
 pRaInfo->RateMask = RateMask;
 pRaInfo->SGIEnable = SGIEnable;
 odm_ARFBRefresh_8188E(dm_odm, pRaInfo);
}
