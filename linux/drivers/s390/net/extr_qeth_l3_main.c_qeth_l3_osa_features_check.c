
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_HW_VLAN_CTAG_TX ;
 int qeth_features_check (struct sk_buff*,struct net_device*,int ) ;
 int qeth_get_ip_version (struct sk_buff*) ;

__attribute__((used)) static netdev_features_t qeth_l3_osa_features_check(struct sk_buff *skb,
          struct net_device *dev,
          netdev_features_t features)
{
 if (qeth_get_ip_version(skb) != 4)
  features &= ~NETIF_F_HW_VLAN_CTAG_TX;
 return qeth_features_check(skb, dev, features);
}
