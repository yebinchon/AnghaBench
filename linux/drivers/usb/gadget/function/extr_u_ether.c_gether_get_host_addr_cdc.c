
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct eth_dev {int host_mac; } ;


 int EINVAL ;
 struct eth_dev* netdev_priv (struct net_device*) ;
 int snprintf (char*,int,char*,int ) ;
 int strlen (char*) ;

int gether_get_host_addr_cdc(struct net_device *net, char *host_addr, int len)
{
 struct eth_dev *dev;

 if (len < 13)
  return -EINVAL;

 dev = netdev_priv(net);
 snprintf(host_addr, len, "%pm", dev->host_mac);

 return strlen(host_addr);
}
