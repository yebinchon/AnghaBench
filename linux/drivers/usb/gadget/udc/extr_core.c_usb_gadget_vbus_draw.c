
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {unsigned int mA; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* vbus_draw ) (struct usb_gadget*,unsigned int) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct usb_gadget*,unsigned int) ;
 int trace_usb_gadget_vbus_draw (struct usb_gadget*,int) ;

int usb_gadget_vbus_draw(struct usb_gadget *gadget, unsigned mA)
{
 int ret = 0;

 if (!gadget->ops->vbus_draw) {
  ret = -EOPNOTSUPP;
  goto out;
 }

 ret = gadget->ops->vbus_draw(gadget, mA);
 if (!ret)
  gadget->mA = mA;

out:
 trace_usb_gadget_vbus_draw(gadget, ret);

 return ret;
}
