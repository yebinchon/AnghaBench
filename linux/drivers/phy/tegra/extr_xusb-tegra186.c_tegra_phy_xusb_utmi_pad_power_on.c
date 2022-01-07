
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_xusb_usb2_port {int dummy; } ;
struct tegra_xusb_padctl {struct device* dev; } ;
struct tegra_xusb_lane {unsigned int index; TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;


 int USB2_OTG_PD ;
 int USB2_OTG_PD_DR ;
 int XUSB_PADCTL_USB2_OTG_PADX_CTL0 (unsigned int) ;
 int XUSB_PADCTL_USB2_OTG_PADX_CTL1 (unsigned int) ;
 int dev_err (struct device*,char*,unsigned int) ;
 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,int ,int ) ;
 struct tegra_xusb_lane* phy_get_drvdata (struct phy*) ;
 int tegra186_utmi_bias_pad_power_on (struct tegra_xusb_padctl*) ;
 struct tegra_xusb_usb2_port* tegra_xusb_find_usb2_port (struct tegra_xusb_padctl*,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static void tegra_phy_xusb_utmi_pad_power_on(struct phy *phy)
{
 struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
 struct tegra_xusb_padctl *padctl = lane->pad->padctl;
 struct tegra_xusb_usb2_port *port;
 struct device *dev = padctl->dev;
 unsigned int index = lane->index;
 u32 value;

 if (!phy)
  return;

 port = tegra_xusb_find_usb2_port(padctl, index);
 if (!port) {
  dev_err(dev, "no port found for USB2 lane %u\n", index);
  return;
 }

 tegra186_utmi_bias_pad_power_on(padctl);

 udelay(2);

 value = padctl_readl(padctl, XUSB_PADCTL_USB2_OTG_PADX_CTL0(index));
 value &= ~USB2_OTG_PD;
 padctl_writel(padctl, value, XUSB_PADCTL_USB2_OTG_PADX_CTL0(index));

 value = padctl_readl(padctl, XUSB_PADCTL_USB2_OTG_PADX_CTL1(index));
 value &= ~USB2_OTG_PD_DR;
 padctl_writel(padctl, value, XUSB_PADCTL_USB2_OTG_PADX_CTL1(index));
}
