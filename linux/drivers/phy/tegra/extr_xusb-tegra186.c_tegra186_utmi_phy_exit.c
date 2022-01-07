
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_xusb_usb2_port {scalar_t__ mode; scalar_t__ supply; } ;
struct tegra_xusb_padctl {struct device* dev; } ;
struct tegra_xusb_lane {unsigned int index; TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;


 int ENODEV ;
 scalar_t__ USB_DR_MODE_HOST ;
 int dev_err (struct device*,char*,unsigned int,...) ;
 struct tegra_xusb_lane* phy_get_drvdata (struct phy*) ;
 int regulator_disable (scalar_t__) ;
 struct tegra_xusb_usb2_port* tegra_xusb_find_usb2_port (struct tegra_xusb_padctl*,unsigned int) ;

__attribute__((used)) static int tegra186_utmi_phy_exit(struct phy *phy)
{
 struct tegra_xusb_lane *lane = phy_get_drvdata(phy);
 struct tegra_xusb_padctl *padctl = lane->pad->padctl;
 struct tegra_xusb_usb2_port *port;
 unsigned int index = lane->index;
 struct device *dev = padctl->dev;
 int err;

 port = tegra_xusb_find_usb2_port(padctl, index);
 if (!port) {
  dev_err(dev, "no port found for USB2 lane %u\n", index);
  return -ENODEV;
 }

 if (port->supply && port->mode == USB_DR_MODE_HOST) {
  err = regulator_disable(port->supply);
  if (err) {
   dev_err(dev, "failed to disable port %u VBUS: %d\n",
    index, err);
   return err;
  }
 }

 return 0;
}
