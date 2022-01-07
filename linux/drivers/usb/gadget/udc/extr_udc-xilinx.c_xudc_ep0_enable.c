
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;
struct usb_endpoint_descriptor {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int xudc_ep0_enable(struct usb_ep *ep,
      const struct usb_endpoint_descriptor *desc)
{
 return -EINVAL;
}
