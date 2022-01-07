
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct odm_dm_struct {TYPE_1__* RAInfo; } ;
struct TYPE_2__ {size_t RateSGI; } ;


 size_t ASSOCIATE_ENTRY_NUM ;
 int ODM_COMP_RATE_ADAPTIVE ;
 int ODM_DBG_TRACE ;
 int ODM_RT_TRACE (struct odm_dm_struct*,int ,int ,char*) ;

u8 ODM_RA_GetShortGI_8188E(struct odm_dm_struct *dm_odm, u8 macid)
{
 if ((!dm_odm) || (macid >= ASSOCIATE_ENTRY_NUM))
  return 0;
 ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
       ("macid =%d SGI =%d\n", macid, dm_odm->RAInfo[macid].RateSGI));
 return dm_odm->RAInfo[macid].RateSGI;
}
