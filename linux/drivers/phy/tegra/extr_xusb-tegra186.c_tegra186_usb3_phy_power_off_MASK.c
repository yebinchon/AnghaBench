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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_xusb_usb3_port {int dummy; } ;
struct tegra_xusb_padctl {int /*<<< orphan*/  lock; struct device* dev; } ;
struct tegra_xusb_lane {unsigned int index; TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  XUSB_PADCTL_ELPG_PROGRAM_1 ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_lane* FUNC8 (struct phy*) ; 
 struct tegra_xusb_usb3_port* FUNC9 (struct tegra_xusb_padctl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct phy *phy)
{
	struct tegra_xusb_lane *lane = FUNC8(phy);
	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
	struct tegra_xusb_usb3_port *port;
	unsigned int index = lane->index;
	struct device *dev = padctl->dev;
	u32 value;

	port = FUNC9(padctl, index);
	if (!port) {
		FUNC3(dev, "no port found for USB3 lane %u\n", index);
		return -ENODEV;
	}

	FUNC4(&padctl->lock);

	value = FUNC6(padctl, XUSB_PADCTL_ELPG_PROGRAM_1);
	value |= FUNC1(index);
	FUNC7(padctl, value, XUSB_PADCTL_ELPG_PROGRAM_1);

	FUNC10(100, 200);

	value = FUNC6(padctl, XUSB_PADCTL_ELPG_PROGRAM_1);
	value |= FUNC0(index);
	FUNC7(padctl, value, XUSB_PADCTL_ELPG_PROGRAM_1);

	FUNC10(250, 350);

	value = FUNC6(padctl, XUSB_PADCTL_ELPG_PROGRAM_1);
	value |= FUNC2(index);
	FUNC7(padctl, value, XUSB_PADCTL_ELPG_PROGRAM_1);

	FUNC5(&padctl->lock);

	return 0;
}