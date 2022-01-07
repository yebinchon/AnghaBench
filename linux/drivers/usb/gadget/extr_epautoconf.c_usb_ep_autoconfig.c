
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_gadget {int dummy; } ;
struct usb_ep {int maxpacket_limit; } ;
struct usb_endpoint_descriptor {int bmAttributes; int wMaxPacketSize; } ;


 int USB_ENDPOINT_XFERTYPE_MASK ;
 int USB_ENDPOINT_XFER_BULK ;
 int cpu_to_le16 (int) ;
 struct usb_ep* usb_ep_autoconfig_ss (struct usb_gadget*,struct usb_endpoint_descriptor*,int *) ;

struct usb_ep *usb_ep_autoconfig(
 struct usb_gadget *gadget,
 struct usb_endpoint_descriptor *desc
)
{
 struct usb_ep *ep;
 u8 type;

 ep = usb_ep_autoconfig_ss(gadget, desc, ((void*)0));
 if (!ep)
  return ((void*)0);

 type = desc->bmAttributes & USB_ENDPOINT_XFERTYPE_MASK;


 if (type == USB_ENDPOINT_XFER_BULK) {
  int size = ep->maxpacket_limit;


  if (size > 64)
   size = 64;
  desc->wMaxPacketSize = cpu_to_le16(size);
 }

 return ep;
}
