
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_device {struct rt_hi_throughput* pHTInfo; } ;
struct rt_hi_throughput {scalar_t__ IOTPeer; int IOTAction; int IOTRaFunc; } ;


 int HT_IOT_ACT_AMSDU_ENABLE ;
 scalar_t__ HT_IOT_PEER_RALINK ;
 int HT_IOT_RAFUNC_DISABLE_ALL ;
 int HT_IOT_RAFUNC_PEER_1R ;
 int HT_IOT_RAFUNC_TX_AMSDU ;

__attribute__((used)) static void HTIOTActDetermineRaFunc(struct rtllib_device *ieee, bool bPeerRx2ss)
{
 struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;

 pHTInfo->IOTRaFunc &= HT_IOT_RAFUNC_DISABLE_ALL;

 if (pHTInfo->IOTPeer == HT_IOT_PEER_RALINK && !bPeerRx2ss)
  pHTInfo->IOTRaFunc |= HT_IOT_RAFUNC_PEER_1R;

 if (pHTInfo->IOTAction & HT_IOT_ACT_AMSDU_ENABLE)
  pHTInfo->IOTRaFunc |= HT_IOT_RAFUNC_TX_AMSDU;

}
