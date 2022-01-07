
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct eth_dev {int host_mac; } ;


 int ETH_ALEN ;
 int memcpy (int *,int ,int ) ;
 struct eth_dev* netdev_priv (struct net_device*) ;

void gether_get_host_addr_u8(struct net_device *net, u8 host_mac[ETH_ALEN])
{
 struct eth_dev *dev;

 dev = netdev_priv(net);
 memcpy(host_mac, dev->host_mac, ETH_ALEN);
}
