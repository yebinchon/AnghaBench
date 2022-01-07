
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_xusb_usb3_port {int dummy; } ;
struct tegra_xusb_padctl {int lock; struct device* dev; } ;
struct tegra_xusb_lane {unsigned int index; TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;


 int ENODEV ;
 int SSPX_ELPG_CLAMP_EN (unsigned int) ;
 int SSPX_ELPG_CLAMP_EN_EARLY (unsigned int) ;
 int SSPX_ELPG_VCORE_DOWN (unsigned int) ;
 int XUSB_PADCTL_ELPG_PROGRAM_1 ;
 int dev_err (struct device*,char*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int padctl_readl (struct tegra_xusb_padctl*,int ) ;
 int padctl_writel (struct tegra_xusb_padctl*,int ,int ) ;
 struct tegra_xusb_lane* phy_get_drvdata (struct phy*) ;
 struct tegra_xusb_usb3_port* tegra_xusb_find_usb3_port (struct tegra_xusb_padctl*,unsigned int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int tegra186_usb3_phy_power_off(struct phy *phy)
{
 struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
 struct tegra_xusb_padctl *padctl = lane->pad->padctl;
 struct tegra_xusb_usb3_port *port;
 unsigned int index = lane->index;
 struct device *dev = padctl->dev;
 u32 value;

 port = tegra_xusb_find_usb3_port(padctl, index);
 if (!port) {
  dev_err(dev, "no port found for USB3 lane %u\n", index);
  return -ENODEV;
 }

 mutex_lock(&padctl->lock);

 value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM_1);
 value |= SSPX_ELPG_CLAMP_EN_EARLY(index);
 padctl_writel(padctl, value, XUSB_PADCTL_ELPG_PROGRAM_1);

 usleep_range(100, 200);

 value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM_1);
 value |= SSPX_ELPG_CLAMP_EN(index);
 padctl_writel(padctl, value, XUSB_PADCTL_ELPG_PROGRAM_1);

 usleep_range(250, 350);

 value = padctl_readl(padctl, XUSB_PADCTL_ELPG_PROGRAM_1);
 value |= SSPX_ELPG_VCORE_DOWN(index);
 padctl_writel(padctl, value, XUSB_PADCTL_ELPG_PROGRAM_1);

 mutex_unlock(&padctl->lock);

 return 0;
}
