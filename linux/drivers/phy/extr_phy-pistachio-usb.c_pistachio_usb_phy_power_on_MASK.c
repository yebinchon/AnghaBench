#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pistachio_usb_phy {unsigned int refclk; int /*<<< orphan*/  phy_clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  cr_top; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long*) ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 unsigned int REFCLK_XO_CRYSTAL ; 
 int /*<<< orphan*/  USB_PHY_CONTROL1 ; 
 unsigned int USB_PHY_CONTROL1_FSEL_MASK ; 
 unsigned int USB_PHY_CONTROL1_FSEL_SHIFT ; 
 int /*<<< orphan*/  USB_PHY_STATUS ; 
 unsigned int USB_PHY_STATUS_RX_PHY_CLK ; 
 unsigned int USB_PHY_STATUS_RX_UTMI_CLK ; 
 unsigned int USB_PHY_STATUS_VBUS_FAULT ; 
 int /*<<< orphan*/  USB_PHY_STRAP_CONTROL ; 
 unsigned int USB_PHY_STRAP_CONTROL_REFCLK_MASK ; 
 unsigned int USB_PHY_STRAP_CONTROL_REFCLK_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 unsigned long* fsel_rate_map ; 
 unsigned long jiffies ; 
 unsigned long FUNC5 (int) ; 
 struct pistachio_usb_phy* FUNC6 (struct phy*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static int FUNC11(struct phy *phy)
{
	struct pistachio_usb_phy *p_phy = FUNC6(phy);
	unsigned long timeout, rate;
	unsigned int i;
	int ret;

	ret = FUNC3(p_phy->phy_clk);
	if (ret < 0) {
		FUNC4(p_phy->dev, "Failed to enable PHY clock: %d\n", ret);
		return ret;
	}

	FUNC8(p_phy->cr_top, USB_PHY_STRAP_CONTROL,
			   USB_PHY_STRAP_CONTROL_REFCLK_MASK <<
			   USB_PHY_STRAP_CONTROL_REFCLK_SHIFT,
			   p_phy->refclk << USB_PHY_STRAP_CONTROL_REFCLK_SHIFT);

	rate = FUNC2(p_phy->phy_clk);
	if (p_phy->refclk == REFCLK_XO_CRYSTAL && rate != 12000000) {
		FUNC4(p_phy->dev, "Unsupported rate for XO crystal: %ld\n",
			rate);
		ret = -EINVAL;
		goto disable_clk;
	}

	for (i = 0; i < FUNC0(fsel_rate_map); i++) {
		if (rate == fsel_rate_map[i])
			break;
	}
	if (i == FUNC0(fsel_rate_map)) {
		FUNC4(p_phy->dev, "Unsupported clock rate: %lu\n", rate);
		ret = -EINVAL;
		goto disable_clk;
	}

	FUNC8(p_phy->cr_top, USB_PHY_CONTROL1,
			   USB_PHY_CONTROL1_FSEL_MASK <<
			   USB_PHY_CONTROL1_FSEL_SHIFT,
			   i << USB_PHY_CONTROL1_FSEL_SHIFT);

	timeout = jiffies + FUNC5(200);
	while (FUNC9(jiffies, timeout)) {
		unsigned int val;

		FUNC7(p_phy->cr_top, USB_PHY_STATUS, &val);
		if (val & USB_PHY_STATUS_VBUS_FAULT) {
			FUNC4(p_phy->dev, "VBUS fault detected\n");
			ret = -EIO;
			goto disable_clk;
		}
		if ((val & USB_PHY_STATUS_RX_PHY_CLK) &&
		    (val & USB_PHY_STATUS_RX_UTMI_CLK))
			return 0;
		FUNC10(1000, 1500);
	}

	FUNC4(p_phy->dev, "Timed out waiting for PHY to power on\n");
	ret = -ETIMEDOUT;

disable_clk:
	FUNC1(p_phy->phy_clk);
	return ret;
}