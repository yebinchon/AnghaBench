
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct device {int dummy; } ;


 int usb_add_gadget_udc_release (struct device*,struct usb_gadget*,int *) ;

int usb_add_gadget_udc(struct device *parent, struct usb_gadget *gadget)
{
 return usb_add_gadget_udc_release(parent, gadget, ((void*)0));
}
