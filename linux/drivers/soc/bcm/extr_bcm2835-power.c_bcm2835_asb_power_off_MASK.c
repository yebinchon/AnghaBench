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
 int FUNC2 (struct bcm2835_power*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_power*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct bcm2835_power_domain *pd,
				 u32 pm_reg,
				 u32 asb_m_reg,
				 u32 asb_s_reg,
				 u32 reset_flags)
{
	struct bcm2835_power *power = pd->power;
	int ret;

	ret = FUNC2(power, asb_s_reg);
	if (ret) {
		FUNC5(power->dev, "Failed to disable ASB slave for %s\n",
			 pd->base.name);
		return ret;
	}
	ret = FUNC2(power, asb_m_reg);
	if (ret) {
		FUNC5(power->dev, "Failed to disable ASB master for %s\n",
			 pd->base.name);
		FUNC3(power, asb_s_reg);
		return ret;
	}

	FUNC4(pd->clk);

	/* Assert the resets. */
	FUNC1(pm_reg, FUNC0(pm_reg) & ~reset_flags);

	return 0;
}