
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ hcd_priv; } ;
struct gb_usb_device {int dummy; } ;



__attribute__((used)) static inline struct gb_usb_device *to_gb_usb_device(struct usb_hcd *hcd)
{
 return (struct gb_usb_device *)hcd->hcd_priv;
}
