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
struct usb_phy_generic {int /*<<< orphan*/  vcc; int /*<<< orphan*/  clk; int /*<<< orphan*/  gpiod_reset; } ;
struct usb_phy {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct usb_phy_generic* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct usb_phy *phy)
{
	struct usb_phy_generic *nop = FUNC3(phy->dev);

	FUNC4(nop->gpiod_reset, 1);

	if (!FUNC0(nop->clk))
		FUNC1(nop->clk);

	if (!FUNC0(nop->vcc)) {
		if (FUNC5(nop->vcc))
			FUNC2(phy->dev, "Failed to disable power\n");
	}
}