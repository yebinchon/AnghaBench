
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct usb_function {TYPE_1__* config; } ;
struct usb_composite_dev {int gadget; } ;
struct net_device {int dummy; } ;
struct TYPE_9__ {int cdc_filter; int is_zlp_ok; TYPE_2__* out_ep; TYPE_2__* in_ep; } ;
struct f_ncm {unsigned int ctrl_id; unsigned int data_id; int timer_stopping; int lock; struct net_device* netdev; TYPE_4__ port; TYPE_2__* notify; } ;
struct TYPE_8__ {int * desc; scalar_t__ enabled; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*,...) ;
 int DEFAULT_FILTER ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int PTR_ERR (struct net_device*) ;
 scalar_t__ config_ep_by_speed (int ,struct usb_function*,TYPE_2__*) ;
 struct f_ncm* func_to_ncm (struct usb_function*) ;
 int gadget_is_zlp_supported (int ) ;
 struct net_device* gether_connect (TYPE_4__*) ;
 int gether_disconnect (TYPE_4__*) ;
 int ncm_notify (struct f_ncm*) ;
 int ncm_reset_values (struct f_ncm*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int usb_ep_disable (TYPE_2__*) ;
 int usb_ep_enable (TYPE_2__*) ;

__attribute__((used)) static int ncm_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_ncm *ncm = func_to_ncm(f);
 struct usb_composite_dev *cdev = f->config->cdev;


 if (intf == ncm->ctrl_id) {
  if (alt != 0)
   goto fail;

  DBG(cdev, "reset ncm control %d\n", intf);
  usb_ep_disable(ncm->notify);

  if (!(ncm->notify->desc)) {
   DBG(cdev, "init ncm ctrl %d\n", intf);
   if (config_ep_by_speed(cdev->gadget, f, ncm->notify))
    goto fail;
  }
  usb_ep_enable(ncm->notify);


 } else if (intf == ncm->data_id) {
  if (alt > 1)
   goto fail;

  if (ncm->port.in_ep->enabled) {
   DBG(cdev, "reset ncm\n");
   ncm->timer_stopping = 1;
   ncm->netdev = ((void*)0);
   gether_disconnect(&ncm->port);
   ncm_reset_values(ncm);
  }





  if (alt == 1) {
   struct net_device *net;

   if (!ncm->port.in_ep->desc ||
       !ncm->port.out_ep->desc) {
    DBG(cdev, "init ncm\n");
    if (config_ep_by_speed(cdev->gadget, f,
             ncm->port.in_ep) ||
        config_ep_by_speed(cdev->gadget, f,
             ncm->port.out_ep)) {
     ncm->port.in_ep->desc = ((void*)0);
     ncm->port.out_ep->desc = ((void*)0);
     goto fail;
    }
   }





   ncm->port.is_zlp_ok =
    gadget_is_zlp_supported(cdev->gadget);
   ncm->port.cdc_filter = DEFAULT_FILTER;
   DBG(cdev, "activate ncm\n");
   net = gether_connect(&ncm->port);
   if (IS_ERR(net))
    return PTR_ERR(net);
   ncm->netdev = net;
   ncm->timer_stopping = 0;
  }

  spin_lock(&ncm->lock);
  ncm_notify(ncm);
  spin_unlock(&ncm->lock);
 } else
  goto fail;

 return 0;
fail:
 return -EINVAL;
}
