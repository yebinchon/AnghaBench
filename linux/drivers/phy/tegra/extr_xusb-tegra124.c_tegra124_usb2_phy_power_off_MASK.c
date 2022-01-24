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
struct tegra_xusb_usb2_port {int /*<<< orphan*/  supply; } ;
struct tegra_xusb_usb2_pad {scalar_t__ enable; int /*<<< orphan*/  lock; } ;
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_lane {int /*<<< orphan*/  index; TYPE_1__* pad; } ;
struct phy {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  XUSB_PADCTL_USB2_BIAS_PAD_CTL0 ; 
 int /*<<< orphan*/  XUSB_PADCTL_USB2_BIAS_PAD_CTL0_PD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_lane* FUNC6 (struct phy*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct tegra_xusb_usb2_port* FUNC8 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_usb2_pad* FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(struct phy *phy)
{
	struct tegra_xusb_lane *lane = FUNC6(phy);
	struct tegra_xusb_usb2_pad *pad = FUNC9(lane->pad);
	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
	struct tegra_xusb_usb2_port *port;
	u32 value;

	port = FUNC8(padctl, lane->index);
	if (!port) {
		FUNC1(&phy->dev, "no port found for USB2 lane %u\n",
			lane->index);
		return -ENODEV;
	}

	FUNC2(&pad->lock);

	if (FUNC0(pad->enable == 0))
		goto out;

	if (--pad->enable > 0)
		goto out;

	value = FUNC4(padctl, XUSB_PADCTL_USB2_BIAS_PAD_CTL0);
	value |= XUSB_PADCTL_USB2_BIAS_PAD_CTL0_PD;
	FUNC5(padctl, value, XUSB_PADCTL_USB2_BIAS_PAD_CTL0);

out:
	FUNC7(port->supply);
	FUNC3(&pad->lock);
	return 0;
}