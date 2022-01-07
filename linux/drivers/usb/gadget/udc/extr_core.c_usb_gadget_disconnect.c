
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usb_gadget {int connected; TYPE_2__* udc; TYPE_3__* ops; scalar_t__ deactivated; } ;
struct TYPE_6__ {int (* pullup ) (struct usb_gadget*,int ) ;} ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int (* disconnect ) (struct usb_gadget*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct usb_gadget*,int ) ;
 int stub2 (struct usb_gadget*) ;
 int trace_usb_gadget_disconnect (struct usb_gadget*,int) ;

int usb_gadget_disconnect(struct usb_gadget *gadget)
{
 int ret = 0;

 if (!gadget->ops->pullup) {
  ret = -EOPNOTSUPP;
  goto out;
 }

 if (gadget->deactivated) {




  gadget->connected = 0;
  goto out;
 }

 ret = gadget->ops->pullup(gadget, 0);
 if (!ret) {
  gadget->connected = 0;
  gadget->udc->driver->disconnect(gadget);
 }

out:
 trace_usb_gadget_disconnect(gadget, ret);

 return ret;
}
