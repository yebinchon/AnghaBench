
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef enum usb_dr_mode { ____Placeholder_usb_dr_mode } usb_dr_mode ;


 int NUM_OF_PHYS ;
 int USB_DR_MODE_UNKNOWN ;
 int of_usb_get_dr_mode_by_phy (struct device_node*,int) ;

__attribute__((used)) static enum usb_dr_mode rcar_gen3_get_dr_mode(struct device_node *np)
{
 enum usb_dr_mode candidate = USB_DR_MODE_UNKNOWN;
 int i;






 for (i = 0; i < NUM_OF_PHYS; i++) {
  enum usb_dr_mode mode = of_usb_get_dr_mode_by_phy(np, i);

  if (mode != USB_DR_MODE_UNKNOWN) {
   if (candidate == USB_DR_MODE_UNKNOWN)
    candidate = mode;
   else if (candidate != mode)
    return USB_DR_MODE_UNKNOWN;
  }
 }

 return candidate;
}
