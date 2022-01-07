
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fhci_hcd {int* gpios; int* alow_gpios; } ;


 int gpio_is_valid (int) ;
 int gpio_set_value (int,int) ;
 int mdelay (int) ;

__attribute__((used)) static void fhci_gpio_set_value(struct fhci_hcd *fhci, int gpio_nr, bool on)
{
 int gpio = fhci->gpios[gpio_nr];
 bool alow = fhci->alow_gpios[gpio_nr];

 if (!gpio_is_valid(gpio))
  return;

 gpio_set_value(gpio, on ^ alow);
 mdelay(5);
}
