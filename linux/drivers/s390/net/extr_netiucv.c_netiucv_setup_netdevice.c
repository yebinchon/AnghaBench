
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int min_mtu; int needs_free_netdev; int flags; int * netdev_ops; int tx_queue_len; int type; scalar_t__ addr_len; int hard_header_len; int priv_destructor; int max_mtu; int mtu; } ;


 int ARPHRD_SLIP ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int NETIUCV_HDRLEN ;
 int NETIUCV_MTU_DEFAULT ;
 int NETIUCV_MTU_MAX ;
 int NETIUCV_QUEUELEN_DEFAULT ;
 int netiucv_free_netdevice ;
 int netiucv_netdev_ops ;

__attribute__((used)) static void netiucv_setup_netdevice(struct net_device *dev)
{
 dev->mtu = NETIUCV_MTU_DEFAULT;
 dev->min_mtu = 576;
 dev->max_mtu = NETIUCV_MTU_MAX;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = netiucv_free_netdevice;
 dev->hard_header_len = NETIUCV_HDRLEN;
 dev->addr_len = 0;
 dev->type = ARPHRD_SLIP;
 dev->tx_queue_len = NETIUCV_QUEUELEN_DEFAULT;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP;
 dev->netdev_ops = &netiucv_netdev_ops;
}
