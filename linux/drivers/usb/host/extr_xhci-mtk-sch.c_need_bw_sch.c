
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int desc; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;


 scalar_t__ is_fs_or_ls (int) ;
 scalar_t__ usb_endpoint_xfer_bulk (int *) ;
 scalar_t__ usb_endpoint_xfer_control (int *) ;

__attribute__((used)) static bool need_bw_sch(struct usb_host_endpoint *ep,
 enum usb_device_speed speed, int has_tt)
{

 if (usb_endpoint_xfer_control(&ep->desc)
  || usb_endpoint_xfer_bulk(&ep->desc))
  return 0;






 if (is_fs_or_ls(speed) && !has_tt)
  return 0;

 return 1;
}
