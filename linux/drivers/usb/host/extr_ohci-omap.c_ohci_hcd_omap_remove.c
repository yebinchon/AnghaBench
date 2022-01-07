
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int controller; } ;
struct usb_hcd {int rsrc_len; int rsrc_start; int regs; TYPE_2__* usb_phy; TYPE_1__ self; } ;
struct platform_device {int dummy; } ;
struct TYPE_5__ {int otg; } ;


 int IS_ERR_OR_NULL (TYPE_2__*) ;
 int clk_put (int ) ;
 int dev_dbg (int ,char*) ;
 int gpio_free (int) ;
 int iounmap (int ) ;
 scalar_t__ machine_is_omap_osk () ;
 int omap_ohci_clock_power (int ) ;
 int otg_set_host (int ,int ) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int ) ;
 int usb_dc_ck ;
 int usb_host_ck ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_put_phy (TYPE_2__*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_hcd_omap_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);

 dev_dbg(hcd->self.controller, "stopping USB Controller\n");
 usb_remove_hcd(hcd);
 omap_ohci_clock_power(0);
 if (!IS_ERR_OR_NULL(hcd->usb_phy)) {
  (void) otg_set_host(hcd->usb_phy->otg, 0);
  usb_put_phy(hcd->usb_phy);
 }
 if (machine_is_omap_osk())
  gpio_free(9);
 iounmap(hcd->regs);
 release_mem_region(hcd->rsrc_start, hcd->rsrc_len);
 usb_put_hcd(hcd);
 clk_put(usb_dc_ck);
 clk_put(usb_host_ck);
 return 0;
}
