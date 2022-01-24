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
struct ti_pipe3 {scalar_t__ mode; struct clk* div_clk; struct clk* sys_clk; scalar_t__ phy_power_syscon; struct clk* wkupclk; struct clk* refclk; struct device* dev; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 scalar_t__ PIPE3_MODE_PCIE ; 
 scalar_t__ PIPE3_MODE_SATA ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 void* FUNC5 (struct device*,char*) ; 

__attribute__((used)) static int FUNC6(struct ti_pipe3 *phy)
{
	struct clk *clk;
	struct device *dev = phy->dev;

	phy->refclk = FUNC5(dev, "refclk");
	if (FUNC1(phy->refclk)) {
		FUNC4(dev, "unable to get refclk\n");
		/* older DTBs have missing refclk in SATA PHY
		 * so don't bail out in case of SATA PHY.
		 */
		if (phy->mode != PIPE3_MODE_SATA)
			return FUNC2(phy->refclk);
	}

	if (phy->mode != PIPE3_MODE_SATA) {
		phy->wkupclk = FUNC5(dev, "wkupclk");
		if (FUNC1(phy->wkupclk)) {
			FUNC4(dev, "unable to get wkupclk\n");
			return FUNC2(phy->wkupclk);
		}
	} else {
		phy->wkupclk = FUNC0(-ENODEV);
	}

	if (phy->mode != PIPE3_MODE_PCIE || phy->phy_power_syscon) {
		phy->sys_clk = FUNC5(dev, "sysclk");
		if (FUNC1(phy->sys_clk)) {
			FUNC4(dev, "unable to get sysclk\n");
			return -EINVAL;
		}
	}

	if (phy->mode == PIPE3_MODE_PCIE) {
		clk = FUNC5(dev, "dpll_ref");
		if (FUNC1(clk)) {
			FUNC4(dev, "unable to get dpll ref clk\n");
			return FUNC2(clk);
		}
		FUNC3(clk, 1500000000);

		clk = FUNC5(dev, "dpll_ref_m2");
		if (FUNC1(clk)) {
			FUNC4(dev, "unable to get dpll ref m2 clk\n");
			return FUNC2(clk);
		}
		FUNC3(clk, 100000000);

		clk = FUNC5(dev, "phy-div");
		if (FUNC1(clk)) {
			FUNC4(dev, "unable to get phy-div clk\n");
			return FUNC2(clk);
		}
		FUNC3(clk, 100000000);

		phy->div_clk = FUNC5(dev, "div-clk");
		if (FUNC1(phy->div_clk)) {
			FUNC4(dev, "unable to get div-clk\n");
			return FUNC2(phy->div_clk);
		}
	} else {
		phy->div_clk = FUNC0(-ENODEV);
	}

	return 0;
}