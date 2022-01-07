
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int deactivated; int connected; } ;


 int trace_usb_gadget_deactivate (struct usb_gadget*,int) ;
 int usb_gadget_disconnect (struct usb_gadget*) ;

int usb_gadget_deactivate(struct usb_gadget *gadget)
{
 int ret = 0;

 if (gadget->deactivated)
  goto out;

 if (gadget->connected) {
  ret = usb_gadget_disconnect(gadget);
  if (ret)
   goto out;





  gadget->connected = 1;
 }
 gadget->deactivated = 1;

out:
 trace_usb_gadget_deactivate(gadget, ret);

 return ret;
}
