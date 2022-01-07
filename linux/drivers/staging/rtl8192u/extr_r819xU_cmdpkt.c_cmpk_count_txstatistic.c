
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int txfeedbackretry; int txretrycount; int txerrunicast; int txerrbroadcast; int txerrmulticast; int txerrbytestotal; int txerrtotal; int txfeedbackfail; int txbytesunicast; int txunicast; int txbytesbroadcast; int txbroadcast; int txbytesmulticast; int txmulticast; int txokinperiod; int txokbytestotal; int txoktotal; int txfeedbackok; } ;
struct r8192_priv {TYPE_2__ stats; } ;
struct net_device {int dummy; } ;
struct cmd_pkt_tx_feedback {scalar_t__ pkt_type; scalar_t__ retry_cnt; scalar_t__ pkt_length; scalar_t__ tok; } ;
typedef int pu1Byte ;
struct TYPE_5__ {int (* GetHwRegHandler ) (TYPE_3__*,int ,int ) ;} ;
struct TYPE_7__ {scalar_t__ bInHctTest; TYPE_1__ HalFunc; } ;
typedef scalar_t__ RT_RF_POWER_STATE ;


 int HW_VAR_RF_STATE ;
 scalar_t__ PACKET_BROADCAST ;
 scalar_t__ PACKET_MULTICAST ;
 scalar_t__ eRfOff ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 TYPE_3__* pAdapter ;
 int stub1 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void cmpk_count_txstatistic(struct net_device *dev, struct cmd_pkt_tx_feedback *pstx_fb)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 if (pstx_fb->tok) {
  priv->stats.txfeedbackok++;
  priv->stats.txoktotal++;
  priv->stats.txokbytestotal += pstx_fb->pkt_length;
  priv->stats.txokinperiod++;


  if (pstx_fb->pkt_type == PACKET_MULTICAST) {
   priv->stats.txmulticast++;
   priv->stats.txbytesmulticast += pstx_fb->pkt_length;
  } else if (pstx_fb->pkt_type == PACKET_BROADCAST) {
   priv->stats.txbroadcast++;
   priv->stats.txbytesbroadcast += pstx_fb->pkt_length;
  } else {
   priv->stats.txunicast++;
   priv->stats.txbytesunicast += pstx_fb->pkt_length;
  }
 } else {
  priv->stats.txfeedbackfail++;
  priv->stats.txerrtotal++;
  priv->stats.txerrbytestotal += pstx_fb->pkt_length;


  if (pstx_fb->pkt_type == PACKET_MULTICAST)
   priv->stats.txerrmulticast++;
  else if (pstx_fb->pkt_type == PACKET_BROADCAST)
   priv->stats.txerrbroadcast++;
  else
   priv->stats.txerrunicast++;
 }

 priv->stats.txretrycount += pstx_fb->retry_cnt;
 priv->stats.txfeedbackretry += pstx_fb->retry_cnt;
}
