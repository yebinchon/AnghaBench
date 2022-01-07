
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct bcm_kona_usb {scalar_t__ regs; } ;


 scalar_t__ P1CTL ;
 int P1CTL_NON_DRIVING ;
 int P1CTL_SOFT_RESET ;
 int mdelay (int) ;
 struct bcm_kona_usb* phy_get_drvdata (struct phy*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int bcm_kona_usb_phy_init(struct phy *gphy)
{
 struct bcm_kona_usb *phy = phy_get_drvdata(gphy);
 u32 val;


 val = readl(phy->regs + P1CTL);
 val &= ~P1CTL_NON_DRIVING;
 val |= P1CTL_SOFT_RESET;
 writel(val, phy->regs + P1CTL);
 writel(val & ~P1CTL_SOFT_RESET, phy->regs + P1CTL);

 mdelay(2);
 writel(val | P1CTL_SOFT_RESET, phy->regs + P1CTL);

 return 0;
}
