
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wahc {int rpipe_mutex; TYPE_1__* usb_iface; } ;
struct TYPE_6__ {int wRPipeIndex; } ;
struct wa_rpipe {TYPE_3__ descr; struct usb_host_endpoint* ep; } ;
struct TYPE_5__ {int bmAttributes; int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_2__ desc; struct wa_rpipe* hcpriv; } ;
struct urb {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {struct device dev; } ;


 int CONFIG_BUG ;
 int ENOBUFS ;
 int __rpipe_get (struct wa_rpipe*) ;
 int dev_dbg (struct device*,char*,int ,int ) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpipe_aim (struct wa_rpipe*,struct wahc*,struct usb_host_endpoint*,struct urb*,int ) ;
 int rpipe_check_aim (struct wa_rpipe*,struct wahc*,struct usb_host_endpoint*,struct urb*,int ) ;
 int rpipe_get_idle (struct wa_rpipe**,struct wahc*,int,int ) ;
 int rpipe_put (struct wa_rpipe*) ;

int rpipe_get_by_ep(struct wahc *wa, struct usb_host_endpoint *ep,
      struct urb *urb, gfp_t gfp)
{
 int result = 0;
 struct device *dev = &wa->usb_iface->dev;
 struct wa_rpipe *rpipe;
 u8 eptype;

 mutex_lock(&wa->rpipe_mutex);
 rpipe = ep->hcpriv;
 if (rpipe != ((void*)0)) {
  if (CONFIG_BUG == 1) {
   result = rpipe_check_aim(rpipe, wa, ep, urb, gfp);
   if (result < 0)
    goto error;
  }
  __rpipe_get(rpipe);
  dev_dbg(dev, "ep 0x%02x: reusing rpipe %u\n",
   ep->desc.bEndpointAddress,
   le16_to_cpu(rpipe->descr.wRPipeIndex));
 } else {

  result = -ENOBUFS;
  eptype = ep->desc.bmAttributes & 0x03;
  result = rpipe_get_idle(&rpipe, wa, 1 << eptype, gfp);
  if (result < 0)
   goto error;
  result = rpipe_aim(rpipe, wa, ep, urb, gfp);
  if (result < 0) {
   rpipe_put(rpipe);
   goto error;
  }
  ep->hcpriv = rpipe;
  rpipe->ep = ep;
  __rpipe_get(rpipe);
  dev_dbg(dev, "ep 0x%02x: using rpipe %u\n",
   ep->desc.bEndpointAddress,
   le16_to_cpu(rpipe->descr.wRPipeIndex));
 }
error:
 mutex_unlock(&wa->rpipe_mutex);
 return result;
}
