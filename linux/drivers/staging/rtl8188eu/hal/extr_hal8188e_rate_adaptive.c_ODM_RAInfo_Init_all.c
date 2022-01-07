
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct odm_dm_struct {scalar_t__ CurrminRptTime; } ;


 scalar_t__ ODM_ASSOCIATE_ENTRY_NUM ;
 int ODM_COMP_RATE_ADAPTIVE ;
 int ODM_DBG_LOUD ;
 int ODM_RAInfo_Init (struct odm_dm_struct*,scalar_t__) ;
 int ODM_RT_TRACE (struct odm_dm_struct*,int ,int ,char*) ;

int ODM_RAInfo_Init_all(struct odm_dm_struct *dm_odm)
{
 u8 macid = 0;

 ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD, ("=====>\n"));
 dm_odm->CurrminRptTime = 0;

 for (macid = 0; macid < ODM_ASSOCIATE_ENTRY_NUM; macid++)
  ODM_RAInfo_Init(dm_odm, macid);

 return 0;
}
