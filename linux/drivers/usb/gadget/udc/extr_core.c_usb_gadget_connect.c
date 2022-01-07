
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int connected; TYPE_1__* ops; scalar_t__ deactivated; } ;
struct TYPE_2__ {int (* pullup ) (struct usb_gadget*,int) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct usb_gadget*,int) ;
 int trace_usb_gadget_connect (struct usb_gadget*,int) ;

int usb_gadget_connect(struct usb_gadget *gadget)
{
 int ret = 0;

 if (!gadget->ops->pullup) {
  ret = -EOPNOTSUPP;
  goto out;
 }

 if (gadget->deactivated) {




  gadget->connected = 1;
  goto out;
 }

 ret = gadget->ops->pullup(gadget, 1);
 if (!ret)
  gadget->connected = 1;

out:
 trace_usb_gadget_connect(gadget, ret);

 return ret;
}
