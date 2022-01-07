
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;


 int dwc2_hsotg_read_frameno (int ) ;
 int to_hsotg (struct usb_gadget*) ;

__attribute__((used)) static int dwc2_hsotg_gadget_getframe(struct usb_gadget *gadget)
{
 return dwc2_hsotg_read_frameno(to_hsotg(gadget));
}
