
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int controller; } ;
struct usb_hcd {scalar_t__ regs; TYPE_1__ self; } ;
struct usb_ehci_pdata {scalar_t__ caps_offset; } ;
struct platform_device {int dev; } ;
struct ehci_hcd {scalar_t__ caps; } ;


 scalar_t__ AHB2STBUS_INSREG01 ;
 struct usb_ehci_pdata* dev_get_platdata (int *) ;
 int ehci_setup (struct usb_hcd*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 struct platform_device* to_platform_device (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int st_ehci_platform_reset(struct usb_hcd *hcd)
{
 struct platform_device *pdev = to_platform_device(hcd->self.controller);
 struct usb_ehci_pdata *pdata = dev_get_platdata(&pdev->dev);
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);
 u32 threshold;


 threshold = 128 | (128 << 16);
 writel(threshold, hcd->regs + AHB2STBUS_INSREG01);

 ehci->caps = hcd->regs + pdata->caps_offset;
 return ehci_setup(hcd);
}
