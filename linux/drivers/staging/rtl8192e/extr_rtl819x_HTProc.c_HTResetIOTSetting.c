
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_hi_throughput {scalar_t__ IOTRaFunc; int IOTPeer; scalar_t__ IOTAction; } ;


 int HT_IOT_PEER_UNKNOWN ;

void HTResetIOTSetting(struct rt_hi_throughput *pHTInfo)
{
 pHTInfo->IOTAction = 0;
 pHTInfo->IOTPeer = HT_IOT_PEER_UNKNOWN;
 pHTInfo->IOTRaFunc = 0;
}
