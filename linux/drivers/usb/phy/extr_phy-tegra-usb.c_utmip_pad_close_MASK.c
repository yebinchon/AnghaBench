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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct tegra_usb_phy {int /*<<< orphan*/  pad_clk; TYPE_1__ u_phy; int /*<<< orphan*/  pad_rst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct tegra_usb_phy *phy)
{
	int ret;

	ret = FUNC1(phy->pad_clk);
	if (ret) {
		FUNC2(phy->u_phy.dev,
			"Failed to enable UTMI-pads clock: %d\n", ret);
		return ret;
	}

	ret = FUNC3(phy->pad_rst);
	if (ret)
		FUNC2(phy->u_phy.dev,
			"Failed to assert UTMI-pads reset: %d\n", ret);

	FUNC4(1);

	FUNC0(phy->pad_clk);

	return ret;
}