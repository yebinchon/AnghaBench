
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fhci_hcd {int * gpios; } ;


 size_t GPIO_USBOE ;
 size_t GPIO_USBRN ;
 size_t GPIO_USBRP ;
 scalar_t__ gpio_get_value (int ) ;

int fhci_ioports_check_bus_state(struct fhci_hcd *fhci)
{
 u8 bits = 0;


 if (!gpio_get_value(fhci->gpios[GPIO_USBOE]))
  return -1;


 if (gpio_get_value(fhci->gpios[GPIO_USBRP]))
  bits |= 0x2;


 if (gpio_get_value(fhci->gpios[GPIO_USBRN]))
  bits |= 0x1;

 return bits;
}
