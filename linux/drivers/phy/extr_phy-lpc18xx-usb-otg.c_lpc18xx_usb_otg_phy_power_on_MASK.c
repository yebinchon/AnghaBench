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
struct lpc18xx_usb_otg_phy {int /*<<< orphan*/  clk; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPC18XX_CREG_CREG0 ; 
 int /*<<< orphan*/  LPC18XX_CREG_CREG0_USB0PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct lpc18xx_usb_otg_phy* FUNC2 (struct phy*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct phy *phy)
{
	struct lpc18xx_usb_otg_phy *lpc = FUNC2(phy);
	int ret;

	ret = FUNC1(lpc->clk);
	if (ret)
		return ret;

	/* The bit in CREG is cleared to enable the PHY */
	ret = FUNC3(lpc->reg, LPC18XX_CREG_CREG0,
				  LPC18XX_CREG_CREG0_USB0PHY, 0);
	if (ret) {
		FUNC0(lpc->clk);
		return ret;
	}

	return 0;
}