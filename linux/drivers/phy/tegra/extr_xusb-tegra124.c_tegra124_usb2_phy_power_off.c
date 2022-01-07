
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_xusb_usb2_port {int supply; } ;
struct tegra_xusb_usb2_pad {scalar_t__ enable; int lock; } ;
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_lane {int index; TYPE_1__* pad; } ;
struct phy {int dev; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;


 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 int XUSB_PADCTL_USB2_BIAS_PAD_CTL0 ;
 int XUSB_PADCTL_USB2_BIAS_PAD_CTL0_PD ;
 int dev_err (int *,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,int ,int ) ;
 struct tegra_xusb_lane* phy_get_drvdata (struct phy*) ;
 int regulator_disable (int ) ;
 struct tegra_xusb_usb2_port* tegra_xusb_find_usb2_port (struct tegra_xusb_padctl*,int ) ;
 struct tegra_xusb_usb2_pad* to_usb2_pad (TYPE_1__*) ;

__attribute__((used)) static int tegra124_usb2_phy_power_off(struct phy *phy)
{
 struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
 struct tegra_xusb_usb2_pad *pad = to_usb2_pad(lane->pad);
 struct tegra_xusb_padctl *padctl = lane->pad->padctl;
 struct tegra_xusb_usb2_port *port;
 u32 value;

 port = tegra_xusb_find_usb2_port(padctl, lane->index);
 if (!port) {
  dev_err(&phy->dev, "no port found for USB2 lane %u\n",
   lane->index);
  return -ENODEV;
 }

 mutex_lock(&pad->lock);

 if (WARN_ON(pad->enable == 0))
  goto out;

 if (--pad->enable > 0)
  goto out;

 value = padctl_readl(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL0);
 value |= XUSB_PADCTL_USB2_BIAS_PAD_CTL0_PD;
 padctl_writel(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL0);

out:
 regulator_disable(port->supply);
 mutex_unlock(&pad->lock);
 return 0;
}
