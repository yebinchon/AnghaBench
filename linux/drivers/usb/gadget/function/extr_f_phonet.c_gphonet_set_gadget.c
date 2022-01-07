
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dev; } ;
struct net_device {int dummy; } ;


 int SET_NETDEV_DEV (struct net_device*,int *) ;

void gphonet_set_gadget(struct net_device *net, struct usb_gadget *g)
{
 SET_NETDEV_DEV(net, &g->dev);
}
