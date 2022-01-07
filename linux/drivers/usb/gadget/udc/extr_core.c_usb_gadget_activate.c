
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int deactivated; scalar_t__ connected; } ;


 int trace_usb_gadget_activate (struct usb_gadget*,int) ;
 int usb_gadget_connect (struct usb_gadget*) ;

int usb_gadget_activate(struct usb_gadget *gadget)
{
 int ret = 0;

 if (!gadget->deactivated)
  goto out;

 gadget->deactivated = 0;





 if (gadget->connected)
  ret = usb_gadget_connect(gadget);

out:
 trace_usb_gadget_activate(gadget, ret);

 return ret;
}
