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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct bcm2835_power_domain {int /*<<< orphan*/  clk; TYPE_1__ base; struct bcm2835_power* power; } ;
struct bcm2835_power {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_power*,int) ; 
 int FUNC3 (struct bcm2835_power*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct bcm2835_power_domain *pd,
				u32 pm_reg,
				u32 asb_m_reg,
				u32 asb_s_reg,
				u32 reset_flags)
{
	struct bcm2835_power *power = pd->power;
	int ret;

	ret = FUNC5(pd->clk);
	if (ret) {
		FUNC6(power->dev, "Failed to enable clock for %s\n",
			pd->base.name);
		return ret;
	}

	/* Wait 32 clocks for reset to propagate, 1 us will be enough */
	FUNC7(1);

	FUNC4(pd->clk);

	/* Deassert the resets. */
	FUNC1(pm_reg, FUNC0(pm_reg) | reset_flags);

	ret = FUNC5(pd->clk);
	if (ret) {
		FUNC6(power->dev, "Failed to enable clock for %s\n",
			pd->base.name);
		goto err_enable_resets;
	}

	ret = FUNC3(power, asb_m_reg);
	if (ret) {
		FUNC6(power->dev, "Failed to enable ASB master for %s\n",
			pd->base.name);
		goto err_disable_clk;
	}
	ret = FUNC3(power, asb_s_reg);
	if (ret) {
		FUNC6(power->dev, "Failed to enable ASB slave for %s\n",
			pd->base.name);
		goto err_disable_asb_master;
	}

	return 0;

err_disable_asb_master:
	FUNC2(power, asb_m_reg);
err_disable_clk:
	FUNC4(pd->clk);
err_enable_resets:
	FUNC1(pm_reg, FUNC0(pm_reg) & ~reset_flags);
	return ret;
}