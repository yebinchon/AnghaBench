
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int gadget; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_4__* out_ep; TYPE_4__* in_ep; } ;
struct f_gether {TYPE_2__ port; } ;
struct TYPE_7__ {int * desc; scalar_t__ enabled; } ;
struct TYPE_5__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 int EINVAL ;
 int PTR_ERR_OR_ZERO (struct net_device*) ;
 scalar_t__ config_ep_by_speed (int ,struct usb_function*,TYPE_4__*) ;
 struct f_gether* func_to_geth (struct usb_function*) ;
 struct net_device* gether_connect (TYPE_2__*) ;
 int gether_disconnect (TYPE_2__*) ;

__attribute__((used)) static int geth_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_gether *geth = func_to_geth(f);
 struct usb_composite_dev *cdev = f->config->cdev;
 struct net_device *net;



 if (geth->port.in_ep->enabled) {
  DBG(cdev, "reset cdc subset\n");
  gether_disconnect(&geth->port);
 }

 DBG(cdev, "init + activate cdc subset\n");
 if (config_ep_by_speed(cdev->gadget, f, geth->port.in_ep) ||
     config_ep_by_speed(cdev->gadget, f, geth->port.out_ep)) {
  geth->port.in_ep->desc = ((void*)0);
  geth->port.out_ep->desc = ((void*)0);
  return -EINVAL;
 }

 net = gether_connect(&geth->port);
 return PTR_ERR_OR_ZERO(net);
}
