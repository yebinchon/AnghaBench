
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int name; struct ctcm_priv* ml_priv; } ;
struct TYPE_2__ {int tx_carrier_errors; int tx_errors; int tx_dropped; } ;
struct ctcm_priv {int * channel; TYPE_1__ stats; int fsm; } ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,int ,...) ;
 int CTCM_FUNTAIL ;
 size_t CTCM_WRITE ;
 int CTC_DBF_ERROR ;
 int DEV_EVENT_START ;
 scalar_t__ DEV_STATE_RUNNING ;
 int ERROR ;
 scalar_t__ LL_HEADER_LENGTH ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ ctcm_test_and_set_busy (struct net_device*) ;
 scalar_t__ ctcm_transmit_skb (int ,struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int fsm_event (int ,int ,struct net_device*) ;
 scalar_t__ fsm_getstate (int ) ;
 int netif_trans_update (struct net_device*) ;
 scalar_t__ skb_headroom (struct sk_buff*) ;

__attribute__((used)) static int ctcm_tx(struct sk_buff *skb, struct net_device *dev)
{
 struct ctcm_priv *priv = dev->ml_priv;

 if (skb == ((void*)0)) {
  CTCM_DBF_TEXT_(ERROR, CTC_DBF_ERROR,
    "%s(%s): NULL sk_buff passed",
     CTCM_FUNTAIL, dev->name);
  priv->stats.tx_dropped++;
  return NETDEV_TX_OK;
 }
 if (skb_headroom(skb) < (LL_HEADER_LENGTH + 2)) {
  CTCM_DBF_TEXT_(ERROR, CTC_DBF_ERROR,
   "%s(%s): Got sk_buff with head room < %ld bytes",
   CTCM_FUNTAIL, dev->name, LL_HEADER_LENGTH + 2);
  dev_kfree_skb(skb);
  priv->stats.tx_dropped++;
  return NETDEV_TX_OK;
 }





 if (fsm_getstate(priv->fsm) != DEV_STATE_RUNNING) {
  fsm_event(priv->fsm, DEV_EVENT_START, dev);
  dev_kfree_skb(skb);
  priv->stats.tx_dropped++;
  priv->stats.tx_errors++;
  priv->stats.tx_carrier_errors++;
  return NETDEV_TX_OK;
 }

 if (ctcm_test_and_set_busy(dev))
  return NETDEV_TX_BUSY;

 netif_trans_update(dev);
 if (ctcm_transmit_skb(priv->channel[CTCM_WRITE], skb) != 0)
  return NETDEV_TX_BUSY;
 return NETDEV_TX_OK;
}
