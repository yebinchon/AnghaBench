
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct gether {TYPE_1__* in_ep; TYPE_1__* out_ep; int (* close ) (struct gether*) ;int (* open ) (struct gether*) ;int wrap; int unwrap; int header_len; int is_zlp_ok; struct eth_dev* ioport; } ;
struct eth_dev {struct net_device* net; int lock; struct gether* port_usb; int wrap; int unwrap; int header_len; int qmult; int gadget; int no_skb_reserve; int zlp; } ;
struct TYPE_3__ {int name; struct eth_dev* driver_data; } ;


 int DBG (struct eth_dev*,char*,int ,...) ;
 int EINVAL ;
 struct net_device* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int alloc_requests (struct eth_dev*,struct gether*,int ) ;
 int eth_start (struct eth_dev*,int ) ;
 int gadget_avoids_skb_reserve (int ) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int qlen (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct gether*) ;
 int stub2 (struct gether*) ;
 int usb_ep_disable (TYPE_1__*) ;
 int usb_ep_enable (TYPE_1__*) ;

struct net_device *gether_connect(struct gether *link)
{
 struct eth_dev *dev = link->ioport;
 int result = 0;

 if (!dev)
  return ERR_PTR(-EINVAL);

 link->in_ep->driver_data = dev;
 result = usb_ep_enable(link->in_ep);
 if (result != 0) {
  DBG(dev, "enable %s --> %d\n",
   link->in_ep->name, result);
  goto fail0;
 }

 link->out_ep->driver_data = dev;
 result = usb_ep_enable(link->out_ep);
 if (result != 0) {
  DBG(dev, "enable %s --> %d\n",
   link->out_ep->name, result);
  goto fail1;
 }

 if (result == 0)
  result = alloc_requests(dev, link, qlen(dev->gadget,
     dev->qmult));

 if (result == 0) {
  dev->zlp = link->is_zlp_ok;
  dev->no_skb_reserve = gadget_avoids_skb_reserve(dev->gadget);
  DBG(dev, "qlen %d\n", qlen(dev->gadget, dev->qmult));

  dev->header_len = link->header_len;
  dev->unwrap = link->unwrap;
  dev->wrap = link->wrap;

  spin_lock(&dev->lock);
  dev->port_usb = link;
  if (netif_running(dev->net)) {
   if (link->open)
    link->open(link);
  } else {
   if (link->close)
    link->close(link);
  }
  spin_unlock(&dev->lock);

  netif_carrier_on(dev->net);
  if (netif_running(dev->net))
   eth_start(dev, GFP_ATOMIC);


 } else {
  (void) usb_ep_disable(link->out_ep);
fail1:
  (void) usb_ep_disable(link->in_ep);
 }
fail0:

 if (result < 0)
  return ERR_PTR(result);
 return dev->net;
}
