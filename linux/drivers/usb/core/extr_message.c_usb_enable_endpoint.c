
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int enabled; int desc; } ;
struct usb_device {struct usb_host_endpoint** ep_in; struct usb_host_endpoint** ep_out; } ;


 int usb_endpoint_dir_out (int *) ;
 int usb_endpoint_num (int *) ;
 int usb_endpoint_xfer_control (int *) ;
 int usb_hcd_reset_endpoint (struct usb_device*,struct usb_host_endpoint*) ;

void usb_enable_endpoint(struct usb_device *dev, struct usb_host_endpoint *ep,
  bool reset_ep)
{
 int epnum = usb_endpoint_num(&ep->desc);
 int is_out = usb_endpoint_dir_out(&ep->desc);
 int is_control = usb_endpoint_xfer_control(&ep->desc);

 if (reset_ep)
  usb_hcd_reset_endpoint(dev, ep);
 if (is_out || is_control)
  dev->ep_out[epnum] = ep;
 if (!is_out || is_control)
  dev->ep_in[epnum] = ep;
 ep->enabled = 1;
}
