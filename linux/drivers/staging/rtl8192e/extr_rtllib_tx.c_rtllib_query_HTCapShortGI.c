
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {struct rt_hi_throughput* pHTInfo; } ;
struct rt_hi_throughput {int bCurBW40MHz; scalar_t__ bCurShortGI20MHz; scalar_t__ bCurShortGI40MHz; scalar_t__ bForcedShortGI; int bEnableHT; int bCurrentHTSupport; } ;
struct cb_desc {int bUseShortGI; } ;



__attribute__((used)) static void rtllib_query_HTCapShortGI(struct rtllib_device *ieee,
          struct cb_desc *tcb_desc)
{
 struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;

 tcb_desc->bUseShortGI = 0;

 if (!pHTInfo->bCurrentHTSupport || !pHTInfo->bEnableHT)
  return;

 if (pHTInfo->bForcedShortGI) {
  tcb_desc->bUseShortGI = 1;
  return;
 }

 if ((pHTInfo->bCurBW40MHz == 1) && pHTInfo->bCurShortGI40MHz)
  tcb_desc->bUseShortGI = 1;
 else if ((pHTInfo->bCurBW40MHz == 0) && pHTInfo->bCurShortGI20MHz)
  tcb_desc->bUseShortGI = 1;
}
