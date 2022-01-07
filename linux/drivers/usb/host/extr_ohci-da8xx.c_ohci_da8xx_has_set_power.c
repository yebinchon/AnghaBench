
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct da8xx_ohci_hcd {scalar_t__ vbus_reg; } ;


 struct da8xx_ohci_hcd* to_da8xx_ohci (struct usb_hcd*) ;

__attribute__((used)) static int ohci_da8xx_has_set_power(struct usb_hcd *hcd)
{
 struct da8xx_ohci_hcd *da8xx_ohci = to_da8xx_ohci(hcd);

 if (da8xx_ohci->vbus_reg)
  return 1;

 return 0;
}
