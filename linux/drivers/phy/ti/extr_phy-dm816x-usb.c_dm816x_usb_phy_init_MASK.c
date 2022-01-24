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
struct phy {int dummy; } ;
struct dm816x_usb_phy {int /*<<< orphan*/  usbphy_ctrl; int /*<<< orphan*/  syscon; int /*<<< orphan*/  dev; int /*<<< orphan*/  usb_ctrl; int /*<<< orphan*/  refclk; } ;

/* Variables and functions */
 unsigned int DM816X_USBPHY_CTRL_TXPREEMTUNE ; 
 unsigned int DM816X_USBPHY_CTRL_TXRISETUNE ; 
 unsigned int DM816X_USBPHY_CTRL_TXVREFTUNE ; 
 int DM816X_USB_CTRL_PHYCLKSRC ; 
 int DM816X_USB_CTRL_PHYSLEEP0 ; 
 int DM816X_USB_CTRL_PHYSLEEP1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct dm816x_usb_phy* FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct phy *x)
{
	struct dm816x_usb_phy *phy = FUNC3(x);
	unsigned int val;
	int error;

	if (FUNC0(phy->refclk) != 24000000)
		FUNC2(phy->dev, "nonstandard phy refclk\n");

	/* Set PLL ref clock and put phys to sleep */
	error = FUNC5(phy->syscon, phy->usb_ctrl,
				   DM816X_USB_CTRL_PHYCLKSRC |
				   DM816X_USB_CTRL_PHYSLEEP1 |
				   DM816X_USB_CTRL_PHYSLEEP0,
				   0);
	FUNC4(phy->syscon, phy->usb_ctrl, &val);
	if ((val & 3) != 0)
		FUNC1(phy->dev,
			 "Working dm816x USB_CTRL! (0x%08x)\n",
			 val);

	/*
	 * TI kernel sets these values for "symmetrical eye diagram and
	 * better signal quality" so let's assume somebody checked the
	 * values with a scope and set them here too.
	 */
	FUNC4(phy->syscon, phy->usbphy_ctrl, &val);
	val |= DM816X_USBPHY_CTRL_TXRISETUNE |
		DM816X_USBPHY_CTRL_TXVREFTUNE |
		DM816X_USBPHY_CTRL_TXPREEMTUNE;
	FUNC6(phy->syscon, phy->usbphy_ctrl, val);

	return 0;
}