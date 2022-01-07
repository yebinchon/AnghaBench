
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;
struct usb_composite_dev {int dummy; } ;


 int disable_ep (struct usb_composite_dev*,struct usb_ep*) ;

void disable_endpoints(struct usb_composite_dev *cdev,
  struct usb_ep *in, struct usb_ep *out,
  struct usb_ep *iso_in, struct usb_ep *iso_out)
{
 disable_ep(cdev, in);
 disable_ep(cdev, out);
 if (iso_in)
  disable_ep(cdev, iso_in);
 if (iso_out)
  disable_ep(cdev, iso_out);
}
