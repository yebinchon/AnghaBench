
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_endpoint_descriptor {int dummy; } ;


 int xhci_get_endpoint_index (struct usb_endpoint_descriptor*) ;

__attribute__((used)) static unsigned int xhci_get_endpoint_flag(struct usb_endpoint_descriptor *desc)
{
 return 1 << (xhci_get_endpoint_index(desc) + 1);
}
