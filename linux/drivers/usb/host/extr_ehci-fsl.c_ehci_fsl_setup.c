
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* controller; } ;
struct usb_hcd {int has_tt; scalar_t__ regs; TYPE_1__ self; } ;
struct fsl_usb2_platform_data {int big_endian_mmio; int big_endian_desc; } ;
struct ehci_hcd {int need_oc_pp_cycle; scalar_t__ caps; int big_endian_mmio; int big_endian_desc; } ;
struct device {TYPE_2__* parent; } ;
struct TYPE_4__ {int of_node; } ;


 scalar_t__ FSL_SOC_USB_SBUSCFG ;
 int SBUSCFG_INCR8 ;
 struct fsl_usb2_platform_data* dev_get_platdata (struct device*) ;
 int ehci_fsl_reinit (struct ehci_hcd*) ;
 int ehci_setup (struct usb_hcd*) ;
 int ehci_writel (struct ehci_hcd*,int ,scalar_t__) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;

__attribute__((used)) static int ehci_fsl_setup(struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);
 int retval;
 struct fsl_usb2_platform_data *pdata;
 struct device *dev;

 dev = hcd->self.controller;
 pdata = dev_get_platdata(hcd->self.controller);
 ehci->big_endian_desc = pdata->big_endian_desc;
 ehci->big_endian_mmio = pdata->big_endian_mmio;


 ehci->caps = hcd->regs + 0x100;
 hcd->has_tt = 1;

 retval = ehci_setup(hcd);
 if (retval)
  return retval;

 if (of_device_is_compatible(dev->parent->of_node,
        "fsl,mpc5121-usb2-dr")) {




  ehci_writel(ehci, SBUSCFG_INCR8,
       hcd->regs + FSL_SOC_USB_SBUSCFG);
 }

 retval = ehci_fsl_reinit(ehci);
 return retval;
}
