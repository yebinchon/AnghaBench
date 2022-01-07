
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int qlge_send (struct sk_buff*,struct net_device*) ;

netdev_tx_t ql_lb_send(struct sk_buff *skb, struct net_device *ndev)
{
 return qlge_send(skb, ndev);
}
