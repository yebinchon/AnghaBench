
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb_padctl {int dummy; } ;
struct phy {int dummy; } ;


 int XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1 ;
 int XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ ;
 int XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD ;
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1 ;
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_MODE ;
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_IDDQ ;
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD ;
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_RST ;
 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,int ,int ) ;
 struct tegra_xusb_padctl* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int sata_phy_power_off(struct phy *phy)
{
 struct tegra_xusb_padctl *padctl = phy_get_drvdata(phy);
 u32 value;

 value = padctl_readl(padctl, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
 value &= ~XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_RST;
 padctl_writel(padctl, value, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);

 value = padctl_readl(padctl, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
 value &= ~XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_MODE;
 padctl_writel(padctl, value, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);

 value = padctl_readl(padctl, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
 value |= XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD;
 value |= XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_IDDQ;
 padctl_writel(padctl, value, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);

 value = padctl_readl(padctl, XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1);
 value |= ~XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD;
 value |= ~XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ;
 padctl_writel(padctl, value, XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1);

 return 0;
}
