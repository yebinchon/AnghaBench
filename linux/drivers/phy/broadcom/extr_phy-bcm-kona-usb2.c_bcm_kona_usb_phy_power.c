
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_kona_usb {scalar_t__ regs; } ;


 scalar_t__ OTGCTL ;
 int OTGCTL_HRESET_N ;
 int OTGCTL_OTGSTAT1 ;
 int OTGCTL_OTGSTAT2 ;
 int OTGCTL_PRST_N_SW ;
 int OTGCTL_UTMI_LINE_STATE0 ;
 int OTGCTL_UTMI_LINE_STATE1 ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bcm_kona_usb_phy_power(struct bcm_kona_usb *phy, int on)
{
 u32 val;

 val = readl(phy->regs + OTGCTL);
 if (on) {

  val &= ~(OTGCTL_OTGSTAT2 | OTGCTL_OTGSTAT1 |
    OTGCTL_UTMI_LINE_STATE1 | OTGCTL_UTMI_LINE_STATE0);
  val |= OTGCTL_PRST_N_SW | OTGCTL_HRESET_N;
 } else {
  val &= ~(OTGCTL_PRST_N_SW | OTGCTL_HRESET_N);
 }
 writel(val, phy->regs + OTGCTL);
}
