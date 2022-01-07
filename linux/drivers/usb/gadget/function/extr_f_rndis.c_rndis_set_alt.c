
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
struct TYPE_9__ {int is_zlp_ok; int cdc_filter; TYPE_2__* out_ep; TYPE_2__* in_ep; } ;
struct f_rndis {unsigned int ctrl_id; unsigned int data_id; TYPE_4__ port; int params; TYPE_2__* notify; } ;
struct TYPE_8__ {int * desc; scalar_t__ enabled; } ;
struct TYPE_7__ {struct usb_composite_dev* cdev; } ;


 int DBG (struct usb_composite_dev*,char*) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct net_device*) ;
 int PTR_ERR (struct net_device*) ;
 int VDBG (struct usb_composite_dev*,char*,unsigned int) ;
 scalar_t__ config_ep_by_speed (int ,struct usb_function*,TYPE_2__*) ;
 struct f_rndis* func_to_rndis (struct usb_function*) ;
 struct net_device* gether_connect (TYPE_4__*) ;
 int gether_disconnect (TYPE_4__*) ;
 int rndis_set_param_dev (int ,struct net_device*,int *) ;
 int usb_ep_disable (TYPE_2__*) ;
 int usb_ep_enable (TYPE_2__*) ;

__attribute__((used)) static int rndis_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
{
 struct f_rndis *rndis = func_to_rndis(f);
 struct usb_composite_dev *cdev = f->config->cdev;



 if (intf == rndis->ctrl_id) {
  VDBG(cdev, "reset rndis control %d\n", intf);
  usb_ep_disable(rndis->notify);

  if (!rndis->notify->desc) {
   VDBG(cdev, "init rndis ctrl %d\n", intf);
   if (config_ep_by_speed(cdev->gadget, f, rndis->notify))
    goto fail;
  }
  usb_ep_enable(rndis->notify);

 } else if (intf == rndis->data_id) {
  struct net_device *net;

  if (rndis->port.in_ep->enabled) {
   DBG(cdev, "reset rndis\n");
   gether_disconnect(&rndis->port);
  }

  if (!rndis->port.in_ep->desc || !rndis->port.out_ep->desc) {
   DBG(cdev, "init rndis\n");
   if (config_ep_by_speed(cdev->gadget, f,
            rndis->port.in_ep) ||
       config_ep_by_speed(cdev->gadget, f,
            rndis->port.out_ep)) {
    rndis->port.in_ep->desc = ((void*)0);
    rndis->port.out_ep->desc = ((void*)0);
    goto fail;
   }
  }


  rndis->port.is_zlp_ok = 0;
  rndis->port.cdc_filter = 0;

  DBG(cdev, "RNDIS RX/TX early activation ... \n");
  net = gether_connect(&rndis->port);
  if (IS_ERR(net))
   return PTR_ERR(net);

  rndis_set_param_dev(rndis->params, net,
    &rndis->port.cdc_filter);
 } else
  goto fail;

 return 0;
fail:
 return -EINVAL;
}
