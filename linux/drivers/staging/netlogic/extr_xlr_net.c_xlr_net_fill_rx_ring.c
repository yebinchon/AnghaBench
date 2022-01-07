
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlr_net_priv {int dummy; } ;
struct net_device {int dummy; } ;


 int ENOMEM ;
 int MAX_FRIN_SPILL ;
 int netdev_info (struct net_device*,char*) ;
 struct xlr_net_priv* netdev_priv (struct net_device*) ;
 int send_to_rfr_fifo (struct xlr_net_priv*,void*) ;
 void* xlr_alloc_skb () ;

__attribute__((used)) static int xlr_net_fill_rx_ring(struct net_device *ndev)
{
 void *skb_data;
 struct xlr_net_priv *priv = netdev_priv(ndev);
 int i;

 for (i = 0; i < MAX_FRIN_SPILL / 4; i++) {
  skb_data = xlr_alloc_skb();
  if (!skb_data)
   return -ENOMEM;
  send_to_rfr_fifo(priv, skb_data);
 }
 netdev_info(ndev, "Rx ring setup done\n");
 return 0;
}
