
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_hcd_histb {int dummy; } ;
struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;


 struct xhci_hcd_histb* dev_get_drvdata (int ) ;

__attribute__((used)) static inline struct xhci_hcd_histb *hcd_to_histb(struct usb_hcd *hcd)
{
 return dev_get_drvdata(hcd->self.controller);
}
