
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {scalar_t__ enabled; } ;
struct usb_device {struct usb_host_endpoint** ep_in; struct usb_host_endpoint** ep_out; } ;


 unsigned int USB_ENDPOINT_NUMBER_MASK ;
 scalar_t__ usb_endpoint_out (unsigned int) ;
 int usb_hcd_disable_endpoint (struct usb_device*,struct usb_host_endpoint*) ;
 int usb_hcd_flush_endpoint (struct usb_device*,struct usb_host_endpoint*) ;

void usb_disable_endpoint(struct usb_device *dev, unsigned int epaddr,
  bool reset_hardware)
{
 unsigned int epnum = epaddr & USB_ENDPOINT_NUMBER_MASK;
 struct usb_host_endpoint *ep;

 if (!dev)
  return;

 if (usb_endpoint_out(epaddr)) {
  ep = dev->ep_out[epnum];
  if (reset_hardware)
   dev->ep_out[epnum] = ((void*)0);
 } else {
  ep = dev->ep_in[epnum];
  if (reset_hardware)
   dev->ep_in[epnum] = ((void*)0);
 }
 if (ep) {
  ep->enabled = 0;
  usb_hcd_flush_endpoint(dev, ep);
  if (reset_hardware)
   usb_hcd_disable_endpoint(dev, ep);
 }
}
