
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_hcd {int dummy; } ;
struct usb_hcd {scalar_t__ regs; } ;


 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;
 struct usb_hcd* xhci_to_hcd (struct xhci_hcd*) ;

__attribute__((used)) static void xhci_cavium_reset_phy_quirk(struct xhci_hcd *xhci)
{
 struct usb_hcd *hcd = xhci_to_hcd(xhci);
 u32 pll_lock_check;
 u32 retry_count = 4;

 do {

  writel(0x6F, hcd->regs + 0x1048);
  udelay(10);

  writel(0x7F, hcd->regs + 0x1048);
  udelay(200);
  pll_lock_check = readl(hcd->regs + 0x1070);
 } while (!(pll_lock_check & 0x1) && --retry_count);
}
