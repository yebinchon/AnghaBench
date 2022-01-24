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
typedef  int u32 ;
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_lane {int /*<<< orphan*/  index; TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1 ; 
 int XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ ; 
 int XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD ; 
 int /*<<< orphan*/  XUSB_PADCTL_IOPHY_PLL_S0_CTL1 ; 
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_LOCKDET ; 
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_MODE ; 
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_IDDQ ; 
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD ; 
 int XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_RST ; 
 int /*<<< orphan*/  XUSB_PADCTL_USB3_PAD_MUX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_xusb_padctl*,int,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_lane* FUNC4 (struct phy*) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct phy *phy)
{
	struct tegra_xusb_lane *lane = FUNC4(phy);
	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
	unsigned long timeout;
	int err = -ETIMEDOUT;
	u32 value;

	value = FUNC2(padctl, XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1);
	value &= ~XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ_OVRD;
	value &= ~XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1_IDDQ;
	FUNC3(padctl, value, XUSB_PADCTL_IOPHY_MISC_PAD_S0_CTL1);

	value = FUNC2(padctl, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
	value &= ~XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_PWR_OVRD;
	value &= ~XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_IDDQ;
	FUNC3(padctl, value, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);

	value = FUNC2(padctl, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
	value |= XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_MODE;
	FUNC3(padctl, value, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);

	value = FUNC2(padctl, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
	value |= XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL_RST;
	FUNC3(padctl, value, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);

	timeout = jiffies + FUNC1(50);

	while (FUNC5(jiffies, timeout)) {
		value = FUNC2(padctl, XUSB_PADCTL_IOPHY_PLL_S0_CTL1);
		if (value & XUSB_PADCTL_IOPHY_PLL_S0_CTL1_PLL1_LOCKDET) {
			err = 0;
			break;
		}

		FUNC6(100, 200);
	}

	value = FUNC2(padctl, XUSB_PADCTL_USB3_PAD_MUX);
	value |= FUNC0(lane->index);
	FUNC3(padctl, value, XUSB_PADCTL_USB3_PAD_MUX);

	return err;
}