
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ hcd_priv; } ;
struct musb {int dummy; } ;



struct musb *hcd_to_musb(struct usb_hcd *hcd)
{
 return *(struct musb **) hcd->hcd_priv;
}
