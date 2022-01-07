
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
struct f_ecm {unsigned int ctrl_id; unsigned int data_id; TYPE_4__ port; TYPE_2__* notify; } ;
struct TYPE_8__ {int * desc; scalar_t__ enabled; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 int DEFAULT_FILTER ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int PTR_ERR (struct net_device*) ;
 int VDBG (struct usb_composite_dev*,char*,unsigned int) ;
 scalar_t__ config_ep_by_speed (int ,struct usb_function*,TYPE_2__*) ;
 int ecm_notify (struct f_ecm*) ;
 struct f_ecm* func_to_ecm (struct usb_function*) ;
 int gadget_is_zlp_supported (int ) ;
 struct net_device* gether_connect (TYPE_4__*) ;
 int gether_disconnect (TYPE_4__*) ;
 int usb_ep_disable (TYPE_2__*) ;
 int usb_ep_enable (TYPE_2__*) ;

__attribute__((used)) static int ecm_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_ecm *ecm = func_to_ecm(f);
 struct usb_composite_dev *cdev = f->config->cdev;


 if (intf == ecm->ctrl_id) {
  if (alt != 0)
   goto fail;

  VDBG(cdev, "reset ecm control %d\n", intf);
  usb_ep_disable(ecm->notify);
  if (!(ecm->notify->desc)) {
   VDBG(cdev, "init ecm ctrl %d\n", intf);
   if (config_ep_by_speed(cdev->gadget, f, ecm->notify))
    goto fail;
  }
  usb_ep_enable(ecm->notify);


 } else if (intf == ecm->data_id) {
  if (alt > 1)
   goto fail;

  if (ecm->port.in_ep->enabled) {
   DBG(cdev, "reset ecm\n");
   gether_disconnect(&ecm->port);
  }

  if (!ecm->port.in_ep->desc ||
      !ecm->port.out_ep->desc) {
   DBG(cdev, "init ecm\n");
   if (config_ep_by_speed(cdev->gadget, f,
            ecm->port.in_ep) ||
       config_ep_by_speed(cdev->gadget, f,
            ecm->port.out_ep)) {
    ecm->port.in_ep->desc = ((void*)0);
    ecm->port.out_ep->desc = ((void*)0);
    goto fail;
   }
  }




  if (alt == 1) {
   struct net_device *net;




   ecm->port.is_zlp_ok =
    gadget_is_zlp_supported(cdev->gadget);
   ecm->port.cdc_filter = DEFAULT_FILTER;
   DBG(cdev, "activate ecm\n");
   net = gether_connect(&ecm->port);
   if (IS_ERR(net))
    return PTR_ERR(net);
  }







  ecm_notify(ecm);
 } else
  goto fail;

 return 0;
fail:
 return -EINVAL;
}
