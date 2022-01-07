
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_xusb_padctl {int dummy; } ;


 int XUSB_PADCTL_HSIC_PADX_CTL0 (unsigned int) ;
 int XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA0 ;
 int XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA1 ;
 int XUSB_PADCTL_HSIC_PAD_CTL0_RPD_STROBE ;
 int XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA0 ;
 int XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA1 ;
 int XUSB_PADCTL_HSIC_PAD_CTL0_RPU_STROBE ;
 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,int,int ) ;

__attribute__((used)) static int tegra210_hsic_set_idle(struct tegra_xusb_padctl *padctl,
      unsigned int index, bool idle)
{
 u32 value;

 value = padctl_readl(padctl, XUSB_PADCTL_HSIC_PADX_CTL0(index));

 value &= ~(XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA0 |
     XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA1 |
     XUSB_PADCTL_HSIC_PAD_CTL0_RPD_STROBE);

 if (idle)
  value |= XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA0 |
    XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA1 |
    XUSB_PADCTL_HSIC_PAD_CTL0_RPU_STROBE;
 else
  value &= ~(XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA0 |
      XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA1 |
      XUSB_PADCTL_HSIC_PAD_CTL0_RPU_STROBE);

 padctl_writel(padctl, value, XUSB_PADCTL_HSIC_PADX_CTL0(index));

 return 0;
}
