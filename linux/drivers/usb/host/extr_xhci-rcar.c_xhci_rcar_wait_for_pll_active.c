
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_hcd {scalar_t__ regs; } ;


 scalar_t__ RCAR_USB3_AXH_STA ;
 int RCAR_USB3_AXH_STA_PLL_ACTIVE_MASK ;
 int readl (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static bool xhci_rcar_wait_for_pll_active(struct usb_hcd *hcd)
{
 int timeout = 1000;
 u32 val, mask = RCAR_USB3_AXH_STA_PLL_ACTIVE_MASK;

 while (timeout > 0) {
  val = readl(hcd->regs + RCAR_USB3_AXH_STA);
  if ((val & mask) == mask)
   return 1;
  udelay(1);
  timeout--;
 }

 return 0;
}
