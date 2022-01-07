
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct rtllib_device {struct rt_hi_throughput* pHTInfo; } ;
struct rt_hi_throughput {scalar_t__ bCurShortGI20MHz; scalar_t__ bCurShortGI40MHz; scalar_t__ bCurBW40MHz; } ;


 int *** MCS_DATA_RATE ;

__attribute__((used)) static u16 HTMcsToDataRate(struct rtllib_device *ieee, u8 nMcsRate)
{
 struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;

 u8 is40MHz = (pHTInfo->bCurBW40MHz) ? 1 : 0;
 u8 isShortGI = (pHTInfo->bCurBW40MHz) ?
       ((pHTInfo->bCurShortGI40MHz) ? 1 : 0) :
       ((pHTInfo->bCurShortGI20MHz) ? 1 : 0);
 return MCS_DATA_RATE[is40MHz][isShortGI][(nMcsRate & 0x7f)];
}
