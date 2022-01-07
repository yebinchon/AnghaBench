
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int bRequestType; scalar_t__ bRequest; } ;


 scalar_t__ USB_REQ_SET_CONFIGURATION ;
 int USB_TYPE_MASK ;
 int USB_TYPE_STANDARD ;

__attribute__((used)) static int mv_u3d_is_set_configuration(struct usb_ctrlrequest *setup)
{
 if ((setup->bRequestType & USB_TYPE_MASK) == USB_TYPE_STANDARD)
  if (setup->bRequest == USB_REQ_SET_CONFIGURATION)
   return 1;

 return 0;
}
