
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct eth_dev {int host_mac; } ;


 int EINVAL ;
 int ETH_ALEN ;
 scalar_t__ get_ether_addr (char const*,int *) ;
 int memcpy (int ,int *,int) ;
 struct eth_dev* netdev_priv (struct net_device*) ;

int gether_set_host_addr(struct net_device *net, const char *host_addr)
{
 struct eth_dev *dev;
 u8 new_addr[ETH_ALEN];

 dev = netdev_priv(net);
 if (get_ether_addr(host_addr, new_addr))
  return -EINVAL;
 memcpy(dev->host_mac, new_addr, ETH_ALEN);
 return 0;
}
