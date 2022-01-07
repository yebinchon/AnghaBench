
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcm_usb_init_params {int ctrl_regs; } ;


 int PHY3_IDDQ_OVERRIDE ;
 int USB30_PCTL ;
 int USB_CTRL_SET (int ,int ,int ) ;
 int brcmusb_xhci_soft_reset (struct brcm_usb_init_params*,int) ;

void brcm_usb_uninit_xhci(struct brcm_usb_init_params *params)
{
 brcmusb_xhci_soft_reset(params, 1);
 USB_CTRL_SET(params->ctrl_regs, USB30_PCTL, PHY3_IDDQ_OVERRIDE);
}
