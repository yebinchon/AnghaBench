
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int hard_header_len; int addr_len; int tx_queue_len; int needs_free_netdev; int * header_ops; int * netdev_ops; int * dev_addr; int max_mtu; int min_mtu; int mtu; int type; scalar_t__ features; } ;


 int ARPHRD_PHONET ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int PHONET_DEV_MTU ;
 int PHONET_MAX_MTU ;
 int PHONET_MIN_MTU ;
 int PN_MEDIA_USB ;
 int phonet_header_ops ;
 int pn_netdev_ops ;

__attribute__((used)) static void pn_net_setup(struct net_device *dev)
{
 dev->features = 0;
 dev->type = ARPHRD_PHONET;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP;
 dev->mtu = PHONET_DEV_MTU;
 dev->min_mtu = PHONET_MIN_MTU;
 dev->max_mtu = PHONET_MAX_MTU;
 dev->hard_header_len = 1;
 dev->dev_addr[0] = PN_MEDIA_USB;
 dev->addr_len = 1;
 dev->tx_queue_len = 1;

 dev->netdev_ops = &pn_netdev_ops;
 dev->needs_free_netdev = 1;
 dev->header_ops = &phonet_header_ops;
}
