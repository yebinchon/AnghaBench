
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct qtnf_vif {int stats64; } ;
struct pcpu_sw_netstats {int syncp; int tx_bytes; int tx_packets; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;


 struct qtnf_vif* qtnf_netdev_get_priv (struct net_device*) ;
 struct pcpu_sw_netstats* this_cpu_ptr (int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

void qtnf_update_tx_stats(struct net_device *ndev, const struct sk_buff *skb)
{
 struct qtnf_vif *vif = qtnf_netdev_get_priv(ndev);
 struct pcpu_sw_netstats *stats64;

 if (unlikely(!vif || !vif->stats64)) {
  ndev->stats.tx_packets++;
  ndev->stats.tx_bytes += skb->len;
  return;
 }

 stats64 = this_cpu_ptr(vif->stats64);

 u64_stats_update_begin(&stats64->syncp);
 stats64->tx_packets++;
 stats64->tx_bytes += skb->len;
 u64_stats_update_end(&stats64->syncp);
}
