
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bdHTInfoLen; scalar_t__ bdHTInfoBuf; } ;
struct rtllib_network {TYPE_1__ bssht; } ;
struct rtllib_device {struct rt_hi_throughput* pHTInfo; } ;
struct rt_hi_throughput {int CurrentOpMode; scalar_t__ bCurrentHTSupport; } ;
struct ht_info_ele {int OptMode; } ;



void HT_update_self_and_peer_setting(struct rtllib_device *ieee,
         struct rtllib_network *pNetwork)
{
 struct rt_hi_throughput *pHTInfo = ieee->pHTInfo;
 struct ht_info_ele *pPeerHTInfo =
   (struct ht_info_ele *)pNetwork->bssht.bdHTInfoBuf;

 if (pHTInfo->bCurrentHTSupport) {
  if (pNetwork->bssht.bdHTInfoLen != 0)
   pHTInfo->CurrentOpMode = pPeerHTInfo->OptMode;
 }
}
