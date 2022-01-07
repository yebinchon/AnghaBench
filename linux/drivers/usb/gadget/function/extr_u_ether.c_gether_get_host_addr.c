
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct eth_dev {int host_mac; } ;


 int get_ether_addr_str (int ,char*,int) ;
 struct eth_dev* netdev_priv (struct net_device*) ;

int gether_get_host_addr(struct net_device *net, char *host_addr, int len)
{
 struct eth_dev *dev;
 int ret;

 dev = netdev_priv(net);
 ret = get_ether_addr_str(dev->host_mac, host_addr, len);
 if (ret + 1 < len) {
  host_addr[ret++] = '\n';
  host_addr[ret] = '\0';
 }

 return ret;
}
