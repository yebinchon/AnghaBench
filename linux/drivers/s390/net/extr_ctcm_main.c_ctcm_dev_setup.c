
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; int flags; int min_mtu; int max_mtu; int type; } ;


 int ARPHRD_SLIP ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;

__attribute__((used)) static void ctcm_dev_setup(struct net_device *dev)
{
 dev->type = ARPHRD_SLIP;
 dev->tx_queue_len = 100;
 dev->flags = IFF_POINTOPOINT | IFF_NOARP;
 dev->min_mtu = 576;
 dev->max_mtu = 65527;
}
