
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct gsm_mux_net {struct gsm_dlci* dlci; } ;
struct gsm_dlci {int skb_list; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int gsm_dlci_data_kick (struct gsm_dlci*) ;
 int muxnet_get (struct gsm_mux_net*) ;
 int muxnet_put (struct gsm_mux_net*) ;
 struct gsm_mux_net* netdev_priv (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int skb_queue_head (int *,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t gsm_mux_net_start_xmit(struct sk_buff *skb,
          struct net_device *net)
{
 struct gsm_mux_net *mux_net = netdev_priv(net);
 struct gsm_dlci *dlci = mux_net->dlci;
 muxnet_get(mux_net);

 skb_queue_head(&dlci->skb_list, skb);
 net->stats.tx_packets++;
 net->stats.tx_bytes += skb->len;
 gsm_dlci_data_kick(dlci);

 netif_trans_update(net);
 muxnet_put(mux_net);
 return NETDEV_TX_OK;
}
