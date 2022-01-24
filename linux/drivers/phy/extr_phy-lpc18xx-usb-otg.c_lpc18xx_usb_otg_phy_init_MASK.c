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
struct lpc18xx_usb_otg_phy {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct lpc18xx_usb_otg_phy* FUNC2 (struct phy*) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct lpc18xx_usb_otg_phy *lpc = FUNC2(phy);
	int ret;

	/* The PHY must be clocked at 480 MHz */
	ret = FUNC1(lpc->clk, 480000000);
	if (ret)
		return ret;

	return FUNC0(lpc->clk);
}