
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcm_usb_init_params {int dummy; } ;


 int USB30_CTL1 ;
 scalar_t__ USB_CTRL_MASK_FAMILY (struct brcm_usb_init_params*,int ,int ) ;
 int USB_CTRL_SET_FAMILY (struct brcm_usb_init_params*,int ,int ) ;
 int USB_CTRL_UNSET_FAMILY (struct brcm_usb_init_params*,int ,int ) ;
 int USB_PM ;
 int XHC_SOFT_RESETB ;

__attribute__((used)) static void brcmusb_xhci_soft_reset(struct brcm_usb_init_params *params,
        int on_off)
{

 if (on_off) {
  if (USB_CTRL_MASK_FAMILY(params, USB_PM, XHC_SOFT_RESETB))
   USB_CTRL_UNSET_FAMILY(params, USB_PM, XHC_SOFT_RESETB);
  else
   USB_CTRL_UNSET_FAMILY(params,
           USB30_CTL1, XHC_SOFT_RESETB);
 } else {
  if (USB_CTRL_MASK_FAMILY(params, USB_PM, XHC_SOFT_RESETB))
   USB_CTRL_SET_FAMILY(params, USB_PM, XHC_SOFT_RESETB);
  else
   USB_CTRL_SET_FAMILY(params, USB30_CTL1,
         XHC_SOFT_RESETB);
 }
}
