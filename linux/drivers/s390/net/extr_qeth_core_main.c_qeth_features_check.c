
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned int data; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {unsigned int gso_size; } ;


 int NETIF_F_SG ;
 scalar_t__ SKB_DATA_ALIGN (unsigned int) ;
 scalar_t__ SKB_MAX_HEAD (int ) ;
 scalar_t__ netif_needs_gso (struct sk_buff*,int ) ;
 unsigned int skb_headroom (struct sk_buff*) ;
 unsigned int skb_mac_header (struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int vlan_features_check (struct sk_buff*,int ) ;

netdev_features_t qeth_features_check(struct sk_buff *skb,
          struct net_device *dev,
          netdev_features_t features)
{







 if (netif_needs_gso(skb, features)) {

  unsigned int doffset = skb->data - skb_mac_header(skb);
  unsigned int hsize = skb_shinfo(skb)->gso_size;
  unsigned int hroom = skb_headroom(skb);


  if (SKB_DATA_ALIGN(hroom + doffset + hsize) <= SKB_MAX_HEAD(0))
   features &= ~NETIF_F_SG;
 }

 return vlan_features_check(skb, features);
}
