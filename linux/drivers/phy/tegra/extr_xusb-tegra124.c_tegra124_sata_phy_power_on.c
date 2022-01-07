
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_lane {int index; TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;


 int ETIMEDOUT ;
 int XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1 ;
 int XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ ;
 int XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD ;
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1 ;
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_LOCKDET ;
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_MODE ;
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_IDDQ ;
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD ;
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_RST ;
 int XUSB_PADCTL_USB3_PAD_MUX ;
 int XUSB_PADCTL_USB3_PAD_MUX_SATA_IDDQ_DISABLE (int ) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,int,int ) ;
 struct tegra_xusb_lane* phy_get_drvdata (struct phy*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra124_sata_phy_power_on(struct phy *phy)
{
 struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
 struct tegra_xusb_padctl *padctl = lane->pad->padctl;
 unsigned long timeout;
 int err = -ETIMEDOUT;
 u32 value;

 value = padctl_readl(padctl, XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1);
 value &= ~XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD;
 value &= ~XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ;
 padctl_writel(padctl, value, XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1);

 value = padctl_readl(padctl, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
 value &= ~XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD;
 value &= ~XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_IDDQ;
 padctl_writel(padctl, value, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);

 value = padctl_readl(padctl, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
 value |= XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_MODE;
 padctl_writel(padctl, value, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);

 value = padctl_readl(padctl, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
 value |= XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_RST;
 padctl_writel(padctl, value, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);

 timeout = jiffies + msecs_to_jiffies(50);

 while (time_before(jiffies, timeout)) {
  value = padctl_readl(padctl, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
  if (value & XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_LOCKDET) {
   err = 0;
   break;
  }

  usleep_range(100, 200);
 }

 value = padctl_readl(padctl, XUSB_PADCTL_USB3_PAD_MUX);
 value |= XUSB_PADCTL_USB3_PAD_MUX_SATA_IDDQ_DISABLE(lane->index);
 padctl_writel(padctl, value, XUSB_PADCTL_USB3_PAD_MUX);

 return err;
}
