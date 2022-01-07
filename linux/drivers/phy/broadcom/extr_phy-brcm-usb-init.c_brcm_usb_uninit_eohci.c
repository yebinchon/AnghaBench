
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcm_usb_init_params {int dummy; } ;


 int USB20_HC_RESETB ;
 scalar_t__ USB_CTRL_MASK_FAMILY (struct brcm_usb_init_params*,int ,int ) ;
 int USB_CTRL_UNSET_FAMILY (struct brcm_usb_init_params*,int ,int ) ;
 int USB_PM ;

void brcm_usb_uninit_eohci(struct brcm_usb_init_params *params)
{
 if (USB_CTRL_MASK_FAMILY(params, USB_PM, USB20_HC_RESETB))
  USB_CTRL_UNSET_FAMILY(params, USB_PM, USB20_HC_RESETB);
}
