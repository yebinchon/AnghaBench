
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dev; } ;
struct net_device {int dummy; } ;
struct eth_dev {struct usb_gadget* gadget; } ;


 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct eth_dev* netdev_priv (struct net_device*) ;

void gether_set_gadget(struct net_device *net, struct usb_gadget *g)
{
 struct eth_dev *dev;

 dev = netdev_priv(net);
 dev->gadget = g;
 SET_NETDEV_DEV(net, &g->dev);
}
