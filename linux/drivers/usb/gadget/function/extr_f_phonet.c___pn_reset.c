
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_function {int dummy; } ;
struct phonet_port {int * usb; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int * skb; } ;
struct f_phonet {TYPE_1__ rx; int in_ep; int out_ep; struct net_device* dev; } ;


 int dev_kfree_skb_irq (int *) ;
 struct f_phonet* func_to_pn (struct usb_function*) ;
 struct phonet_port* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int usb_ep_disable (int ) ;

__attribute__((used)) static void __pn_reset(struct usb_function *f)
{
 struct f_phonet *fp = func_to_pn(f);
 struct net_device *dev = fp->dev;
 struct phonet_port *port = netdev_priv(dev);

 netif_carrier_off(dev);
 port->usb = ((void*)0);

 usb_ep_disable(fp->out_ep);
 usb_ep_disable(fp->in_ep);
 if (fp->rx.skb) {
  dev_kfree_skb_irq(fp->rx.skb);
  fp->rx.skb = ((void*)0);
 }
}
