
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {scalar_t__ regs; } ;


 scalar_t__ RCAR_USB3_CONF1 ;
 int RCAR_USB3_CONF1_VAL ;
 scalar_t__ RCAR_USB3_CONF2 ;
 int RCAR_USB3_CONF2_VAL ;
 scalar_t__ RCAR_USB3_CONF3 ;
 int RCAR_USB3_CONF3_VAL ;
 scalar_t__ RCAR_USB3_LCLK ;
 int RCAR_USB3_LCLK_ENA_VAL ;
 scalar_t__ RCAR_USB3_RX_POL ;
 int RCAR_USB3_RX_POL_VAL ;
 scalar_t__ RCAR_USB3_TX_POL ;
 int RCAR_USB3_TX_POL_VAL ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void xhci_rcar_start_gen2(struct usb_hcd *hcd)
{

 writel(RCAR_USB3_LCLK_ENA_VAL, hcd->regs + RCAR_USB3_LCLK);

 writel(RCAR_USB3_CONF1_VAL, hcd->regs + RCAR_USB3_CONF1);
 writel(RCAR_USB3_CONF2_VAL, hcd->regs + RCAR_USB3_CONF2);
 writel(RCAR_USB3_CONF3_VAL, hcd->regs + RCAR_USB3_CONF3);

 writel(RCAR_USB3_RX_POL_VAL, hcd->regs + RCAR_USB3_RX_POL);
 writel(RCAR_USB3_TX_POL_VAL, hcd->regs + RCAR_USB3_TX_POL);
}
