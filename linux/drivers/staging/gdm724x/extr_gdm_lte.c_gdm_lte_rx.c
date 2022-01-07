
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct nic {TYPE_1__ stats; } ;


 scalar_t__ ETH_HLEN ;
 int NET_RX_DROP ;
 int netif_rx_ni (struct sk_buff*) ;

__attribute__((used)) static int gdm_lte_rx(struct sk_buff *skb, struct nic *nic, int nic_type)
{
 int ret;

 ret = netif_rx_ni(skb);
 if (ret == NET_RX_DROP) {
  nic->stats.rx_dropped++;
 } else {
  nic->stats.rx_packets++;
  nic->stats.rx_bytes += skb->len + ETH_HLEN;
 }

 return 0;
}
