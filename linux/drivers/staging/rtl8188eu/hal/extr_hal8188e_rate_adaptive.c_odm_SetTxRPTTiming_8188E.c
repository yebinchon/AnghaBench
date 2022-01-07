
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct odm_ra_info {scalar_t__ RptTime; } ;
struct odm_dm_struct {int dummy; } ;


 scalar_t__* DynamicTxRPTTiming ;
 int ODM_COMP_RATE_ADAPTIVE ;
 int ODM_DBG_LOUD ;
 int ODM_RT_TRACE (struct odm_dm_struct*,int ,int ,char*) ;

__attribute__((used)) static void odm_SetTxRPTTiming_8188E(struct odm_dm_struct *dm_odm,
         struct odm_ra_info *pRaInfo, u8 extend)
{
 u8 idx = 0;

 for (idx = 0; idx < 5; idx++)
  if (DynamicTxRPTTiming[idx] == pRaInfo->RptTime)
   break;

 if (extend == 0) {
  idx = 0;
 } else if (extend == 1) {
  idx += 1;
  if (idx > 5)
   idx = 5;
 } else if (extend == 2) {
  if (idx != 0)
   idx -= 1;
 }
 pRaInfo->RptTime = DynamicTxRPTTiming[idx];

 ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_LOUD,
       ("pRaInfo->RptTime = 0x%x\n", pRaInfo->RptTime));
}
