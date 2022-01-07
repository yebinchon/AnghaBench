
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_gadget {int dummy; } ;
struct dwc3 {int dummy; } ;


 int __dwc3_gadget_get_frame (struct dwc3*) ;
 struct dwc3* gadget_to_dwc (struct usb_gadget*) ;

__attribute__((used)) static int dwc3_gadget_get_frame(struct usb_gadget *g)
{
 struct dwc3 *dwc = gadget_to_dwc(g);

 return __dwc3_gadget_get_frame(dwc);
}
