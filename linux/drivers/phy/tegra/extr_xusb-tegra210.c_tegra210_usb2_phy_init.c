
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_lane {TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;


 int XUSB_PADCTL_USB2_PAD_MUX ;
 int XUSB_PADCTL_USB2_PAD_MUX_USB2_BIAS_PAD_MASK ;
 int XUSB_PADCTL_USB2_PAD_MUX_USB2_BIAS_PAD_SHIFT ;
 int XUSB_PADCTL_USB2_PAD_MUX_USB2_BIAS_PAD_XUSB ;
 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,int,int ) ;
 struct tegra_xusb_lane* phy_get_drvdata (struct phy*) ;
 int tegra210_xusb_padctl_enable (struct tegra_xusb_padctl*) ;

__attribute__((used)) static int tegra210_usb2_phy_init(struct phy *phy)
{
 struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
 struct tegra_xusb_padctl *padctl = lane->pad->padctl;
 u32 value;

 value = padctl_readl(padctl, XUSB_PADCTL_USB2_PAD_MUX);
 value &= ~(XUSB_PADCTL_USB2_PAD_MUX_USB2_BIAS_PAD_MASK <<
     XUSB_PADCTL_USB2_PAD_MUX_USB2_BIAS_PAD_SHIFT);
 value |= XUSB_PADCTL_USB2_PAD_MUX_USB2_BIAS_PAD_XUSB <<
   XUSB_PADCTL_USB2_PAD_MUX_USB2_BIAS_PAD_SHIFT;
 padctl_writel(padctl, value, XUSB_PADCTL_USB2_PAD_MUX);

 return tegra210_xusb_padctl_enable(padctl);
}
