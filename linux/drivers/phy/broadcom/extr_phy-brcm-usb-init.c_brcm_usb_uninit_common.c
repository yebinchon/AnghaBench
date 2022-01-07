
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcm_usb_init_params {int dummy; } ;


 int PLL_CTL ;
 int PLL_IDDQ_PWRDN ;
 scalar_t__ USB_CTRL_MASK_FAMILY (struct brcm_usb_init_params*,int ,int ) ;
 int USB_CTRL_SET_FAMILY (struct brcm_usb_init_params*,int ,int ) ;
 int USB_PM ;
 int USB_PWRDN ;

void brcm_usb_uninit_common(struct brcm_usb_init_params *params)
{
 if (USB_CTRL_MASK_FAMILY(params, USB_PM, USB_PWRDN))
  USB_CTRL_SET_FAMILY(params, USB_PM, USB_PWRDN);

 if (USB_CTRL_MASK_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN))
  USB_CTRL_SET_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN);
}
