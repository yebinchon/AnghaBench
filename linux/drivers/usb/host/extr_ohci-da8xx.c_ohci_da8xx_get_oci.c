
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct da8xx_ohci_hcd {int vbus_reg; scalar_t__ oc_gpio; } ;


 unsigned int REGULATOR_ERROR_OVER_CURRENT ;
 int gpiod_get_value_cansleep (scalar_t__) ;
 int regulator_get_error_flags (int ,unsigned int*) ;
 struct da8xx_ohci_hcd* to_da8xx_ohci (struct usb_hcd*) ;

__attribute__((used)) static int ohci_da8xx_get_oci(struct usb_hcd *hcd)
{
 struct da8xx_ohci_hcd *da8xx_ohci = to_da8xx_ohci(hcd);
 unsigned int flags;
 int ret;

 if (da8xx_ohci->oc_gpio)
  return gpiod_get_value_cansleep(da8xx_ohci->oc_gpio);

 if (!da8xx_ohci->vbus_reg)
  return 0;

 ret = regulator_get_error_flags(da8xx_ohci->vbus_reg, &flags);
 if (ret)
  return ret;

 if (flags & REGULATOR_ERROR_OVER_CURRENT)
  return 1;

 return 0;
}
