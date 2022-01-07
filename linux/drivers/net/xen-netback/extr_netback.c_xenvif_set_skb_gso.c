
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xenvif {int dev; } ;
struct TYPE_5__ {int type; scalar_t__ size; } ;
struct TYPE_4__ {TYPE_2__ gso; } ;
struct xen_netif_extra_info {TYPE_1__ u; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ gso_size; int gso_type; } ;


 int EINVAL ;
 int SKB_GSO_TCPV4 ;
 int SKB_GSO_TCPV6 ;


 int netdev_err (int ,char*,...) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int xenvif_fatal_tx_err (struct xenvif*) ;

__attribute__((used)) static int xenvif_set_skb_gso(struct xenvif *vif,
         struct sk_buff *skb,
         struct xen_netif_extra_info *gso)
{
 if (!gso->u.gso.size) {
  netdev_err(vif->dev, "GSO size must not be zero.\n");
  xenvif_fatal_tx_err(vif);
  return -EINVAL;
 }

 switch (gso->u.gso.type) {
 case 129:
  skb_shinfo(skb)->gso_type = SKB_GSO_TCPV4;
  break;
 case 128:
  skb_shinfo(skb)->gso_type = SKB_GSO_TCPV6;
  break;
 default:
  netdev_err(vif->dev, "Bad GSO type %d.\n", gso->u.gso.type);
  xenvif_fatal_tx_err(vif);
  return -EINVAL;
 }

 skb_shinfo(skb)->gso_size = gso->u.gso.size;


 return 0;
}
