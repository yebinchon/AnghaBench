
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int dummy; } ;
struct usb_device {struct usb_host_endpoint** ep_out; struct usb_host_endpoint** ep_in; } ;


 unsigned char USB_ENDPOINT_DIR_MASK ;
 unsigned char USB_ENDPOINT_NUMBER_MASK ;

__attribute__((used)) static struct usb_host_endpoint *ep_to_host_endpoint(struct usb_device *dev,
           unsigned char ep)
{
 if (ep & USB_ENDPOINT_DIR_MASK)
  return dev->ep_in[ep & USB_ENDPOINT_NUMBER_MASK];
 else
  return dev->ep_out[ep & USB_ENDPOINT_NUMBER_MASK];
}
