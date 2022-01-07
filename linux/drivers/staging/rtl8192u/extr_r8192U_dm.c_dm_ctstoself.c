
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long txbytesunicast; unsigned long rxbytesunicast; } ;
struct r8192_priv {TYPE_2__ stats; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ IOTPeer; int IOTAction; } ;
struct TYPE_4__ {int bCTSToSelfEnable; TYPE_3__* pHTInfo; } ;
typedef TYPE_3__* PRT_HIGH_THROUGHPUT ;


 int HT_IOT_ACT_FORCED_CTS2SELF ;
 scalar_t__ HT_IOT_PEER_BROADCOM ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;

__attribute__((used)) static void dm_ctstoself(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 PRT_HIGH_THROUGHPUT pHTInfo = priv->ieee80211->pHTInfo;
 static unsigned long lastTxOkCnt;
 static unsigned long lastRxOkCnt;
 unsigned long curTxOkCnt = 0;
 unsigned long curRxOkCnt = 0;

 if (priv->ieee80211->bCTSToSelfEnable != 1) {
  pHTInfo->IOTAction &= ~HT_IOT_ACT_FORCED_CTS2SELF;
  return;
 }





 if (pHTInfo->IOTPeer == HT_IOT_PEER_BROADCOM) {
  curTxOkCnt = priv->stats.txbytesunicast - lastTxOkCnt;
  curRxOkCnt = priv->stats.rxbytesunicast - lastRxOkCnt;
  if (curRxOkCnt > 4*curTxOkCnt) {
   pHTInfo->IOTAction &= ~HT_IOT_ACT_FORCED_CTS2SELF;

  } else {
   pHTInfo->IOTAction |= HT_IOT_ACT_FORCED_CTS2SELF;
  }

  lastTxOkCnt = priv->stats.txbytesunicast;
  lastRxOkCnt = priv->stats.rxbytesunicast;
 }
}
