
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; struct net_device* dev; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct gsm_mux_net {int dummy; } ;
struct gsm_dlci {struct net_device* net; } ;


 int ETH_P_IP ;
 scalar_t__ NET_IP_ALIGN ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int htons (int ) ;
 int muxnet_get (struct gsm_mux_net*) ;
 int muxnet_put (struct gsm_mux_net*) ;
 struct gsm_mux_net* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,unsigned char const*,int) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static void gsm_mux_rx_netchar(struct gsm_dlci *dlci,
    const unsigned char *in_buf, int size)
{
 struct net_device *net = dlci->net;
 struct sk_buff *skb;
 struct gsm_mux_net *mux_net = netdev_priv(net);
 muxnet_get(mux_net);


 skb = dev_alloc_skb(size + NET_IP_ALIGN);
 if (!skb) {

  net->stats.rx_dropped++;
  muxnet_put(mux_net);
  return;
 }
 skb_reserve(skb, NET_IP_ALIGN);
 skb_put_data(skb, in_buf, size);

 skb->dev = net;
 skb->protocol = htons(ETH_P_IP);


 netif_rx(skb);


 net->stats.rx_packets++;
 net->stats.rx_bytes += size;
 muxnet_put(mux_net);
 return;
}
