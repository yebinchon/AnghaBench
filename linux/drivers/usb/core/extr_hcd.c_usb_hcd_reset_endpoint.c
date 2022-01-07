
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_host_endpoint {int desc; } ;
struct usb_hcd {TYPE_1__* driver; } ;
struct usb_device {int bus; } ;
struct TYPE_2__ {int (* endpoint_reset ) (struct usb_hcd*,struct usb_host_endpoint*) ;} ;


 struct usb_hcd* bus_to_hcd (int ) ;
 int stub1 (struct usb_hcd*,struct usb_host_endpoint*) ;
 int usb_endpoint_dir_out (int *) ;
 int usb_endpoint_num (int *) ;
 int usb_endpoint_xfer_control (int *) ;
 int usb_settoggle (struct usb_device*,int,int,int ) ;

void usb_hcd_reset_endpoint(struct usb_device *udev,
       struct usb_host_endpoint *ep)
{
 struct usb_hcd *hcd = bus_to_hcd(udev->bus);

 if (hcd->driver->endpoint_reset)
  hcd->driver->endpoint_reset(hcd, ep);
 else {
  int epnum = usb_endpoint_num(&ep->desc);
  int is_out = usb_endpoint_dir_out(&ep->desc);
  int is_control = usb_endpoint_xfer_control(&ep->desc);

  usb_settoggle(udev, epnum, is_out, 0);
  if (is_control)
   usb_settoggle(udev, epnum, !is_out, 0);
 }
}
