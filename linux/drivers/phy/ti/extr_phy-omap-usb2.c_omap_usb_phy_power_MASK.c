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
typedef  int /*<<< orphan*/  u32 ;
struct omap_usb {int /*<<< orphan*/  mask; int /*<<< orphan*/  power_reg; int /*<<< orphan*/  syscon_phy_power; int /*<<< orphan*/  power_off; int /*<<< orphan*/  power_on; int /*<<< orphan*/  control_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct omap_usb *phy, int on)
{
	u32 val;
	int ret;

	if (!phy->syscon_phy_power) {
		FUNC0(phy->control_dev, on);
		return 0;
	}

	if (on)
		val = phy->power_on;
	else
		val = phy->power_off;

	ret = FUNC1(phy->syscon_phy_power, phy->power_reg,
				 phy->mask, val);
	return ret;
}