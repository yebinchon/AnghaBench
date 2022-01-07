
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif {int gso_mask; int ipv6_csum; int ip_csum; int can_sg; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int GSO_BIT (int ) ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int TCPV4 ;
 int TCPV6 ;
 struct xenvif* netdev_priv (struct net_device*) ;

__attribute__((used)) static netdev_features_t xenvif_fix_features(struct net_device *dev,
 netdev_features_t features)
{
 struct xenvif *vif = netdev_priv(dev);

 if (!vif->can_sg)
  features &= ~NETIF_F_SG;
 if (~(vif->gso_mask) & GSO_BIT(TCPV4))
  features &= ~NETIF_F_TSO;
 if (~(vif->gso_mask) & GSO_BIT(TCPV6))
  features &= ~NETIF_F_TSO6;
 if (!vif->ip_csum)
  features &= ~NETIF_F_IP_CSUM;
 if (!vif->ipv6_csum)
  features &= ~NETIF_F_IPV6_CSUM;

 return features;
}
