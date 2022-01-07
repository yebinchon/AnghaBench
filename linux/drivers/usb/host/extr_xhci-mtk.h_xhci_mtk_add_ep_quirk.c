
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct usb_device {int dummy; } ;



__attribute__((used)) static inline int xhci_mtk_add_ep_quirk(struct usb_hcd *hcd,
 struct usb_device *udev, struct usb_host_endpoint *ep)
{
 return 0;
}
