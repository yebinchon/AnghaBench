
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;



__attribute__((used)) static inline int xhci_rcar_resume_quirk(struct usb_hcd *hcd)
{
 return 0;
}
