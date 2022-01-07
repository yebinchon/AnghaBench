
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct ks_wlan_private {TYPE_1__ nstats; int net_dev; } ;


 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;

void send_packet_complete(struct ks_wlan_private *priv, struct sk_buff *skb)
{
 priv->nstats.tx_packets++;

 if (netif_queue_stopped(priv->net_dev))
  netif_wake_queue(priv->net_dev);

 if (skb) {
  priv->nstats.tx_bytes += skb->len;
  dev_kfree_skb(skb);
 }
}
