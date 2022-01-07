
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int tx_bytes; int tx_packets; int tx_dropped; int tx_fifo_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int ch_id; } ;
struct net_dev_context {scalar_t__ is_mamac; TYPE_1__ tx; int iface; } ;
struct mbo {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int comp ;
 int kfree_skb (struct sk_buff*) ;
 struct mbo* most_get_mbo (int ,int ,int *) ;
 int most_put_mbo (struct mbo*) ;
 int most_submit_mbo (struct mbo*) ;
 struct net_dev_context* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_to_mamac (struct sk_buff*,struct mbo*) ;
 int skb_to_mep (struct sk_buff*,struct mbo*) ;

__attribute__((used)) static netdev_tx_t most_nd_start_xmit(struct sk_buff *skb,
          struct net_device *dev)
{
 struct net_dev_context *nd = netdev_priv(dev);
 struct mbo *mbo;
 int ret;

 mbo = most_get_mbo(nd->iface, nd->tx.ch_id, &comp);

 if (!mbo) {
  netif_stop_queue(dev);
  dev->stats.tx_fifo_errors++;
  return NETDEV_TX_BUSY;
 }

 if (nd->is_mamac)
  ret = skb_to_mamac(skb, mbo);
 else
  ret = skb_to_mep(skb, mbo);

 if (ret) {
  most_put_mbo(mbo);
  dev->stats.tx_dropped++;
  kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 most_submit_mbo(mbo);
 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;
 kfree_skb(skb);
 return NETDEV_TX_OK;
}
