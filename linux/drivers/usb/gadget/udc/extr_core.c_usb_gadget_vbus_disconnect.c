
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* vbus_session ) (struct usb_gadget*,int ) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct usb_gadget*,int ) ;
 int trace_usb_gadget_vbus_disconnect (struct usb_gadget*,int) ;

int usb_gadget_vbus_disconnect(struct usb_gadget *gadget)
{
 int ret = 0;

 if (!gadget->ops->vbus_session) {
  ret = -EOPNOTSUPP;
  goto out;
 }

 ret = gadget->ops->vbus_session(gadget, 0);

out:
 trace_usb_gadget_vbus_disconnect(gadget, ret);

 return ret;
}
