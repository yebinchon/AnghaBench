
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int dev; } ;
struct sockaddr {int sa_data; int sa_family; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {int type; TYPE_1__ dev; } ;
struct eth_dev {int dev_mac; int host_mac; struct usb_gadget* gadget; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int INFO (struct eth_dev*,char*,int ) ;
 int dev_dbg (int *,char*,int) ;
 int dev_set_mac_address (struct net_device*,struct sockaddr*,int *) ;
 int memcpy (int ,int ,int ) ;
 struct eth_dev* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int pr_warn (char*,int) ;
 int register_netdev (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int gether_register_netdev(struct net_device *net)
{
 struct eth_dev *dev;
 struct usb_gadget *g;
 struct sockaddr sa;
 int status;

 if (!net->dev.parent)
  return -EINVAL;
 dev = netdev_priv(net);
 g = dev->gadget;
 status = register_netdev(net);
 if (status < 0) {
  dev_dbg(&g->dev, "register_netdev failed, %d\n", status);
  return status;
 } else {
  INFO(dev, "HOST MAC %pM\n", dev->host_mac);





  netif_carrier_off(net);
 }
 sa.sa_family = net->type;
 memcpy(sa.sa_data, dev->dev_mac, ETH_ALEN);
 rtnl_lock();
 status = dev_set_mac_address(net, &sa, ((void*)0));
 rtnl_unlock();
 if (status)
  pr_warn("cannot set self ethernet address: %d\n", status);
 else
  INFO(dev, "MAC %pM\n", dev->dev_mac);

 return status;
}
