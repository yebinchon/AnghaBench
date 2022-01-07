
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t mon_xmit(struct sk_buff *skb, struct net_device *dev)
{
 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
