
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint_descriptor {int dummy; } ;


 scalar_t__ usb_endpoint_dir_in (struct usb_endpoint_descriptor const*) ;
 int usb_endpoint_num (struct usb_endpoint_descriptor const*) ;

__attribute__((used)) static unsigned int dummy_get_ep_idx(const struct usb_endpoint_descriptor *desc)
{
 unsigned int index;

 index = usb_endpoint_num(desc) << 1;
 if (usb_endpoint_dir_in(desc))
  index |= 1;
 return index;
}
