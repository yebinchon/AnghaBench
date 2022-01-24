#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tegra_xusb_usb2_port {scalar_t__ mode; scalar_t__ supply; } ;
struct tegra_xusb_padctl {struct device* dev; } ;
struct tegra_xusb_lane {unsigned int index; TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ USB_DR_MODE_HOST ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int,...) ; 
 struct tegra_xusb_lane* FUNC1 (struct phy*) ; 
 int FUNC2 (scalar_t__) ; 
 struct tegra_xusb_usb2_port* FUNC3 (struct tegra_xusb_padctl*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct phy *phy)
{
	struct tegra_xusb_lane *lane = FUNC1(phy);
	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
	struct tegra_xusb_usb2_port *port;
	unsigned int index = lane->index;
	struct device *dev = padctl->dev;
	int err;

	port = FUNC3(padctl, index);
	if (!port) {
		FUNC0(dev, "no port found for USB2 lane %u\n", index);
		return -ENODEV;
	}

	if (port->supply && port->mode == USB_DR_MODE_HOST) {
		err = FUNC2(port->supply);
		if (err) {
			FUNC0(dev, "failed to enable port %u VBUS: %d\n",
				index, err);
			return err;
		}
	}

	return 0;
}