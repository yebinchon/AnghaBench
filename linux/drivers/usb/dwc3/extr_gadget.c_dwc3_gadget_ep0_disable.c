
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ep {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int dwc3_gadget_ep0_disable(struct usb_ep *ep)
{
 return -EINVAL;
}
