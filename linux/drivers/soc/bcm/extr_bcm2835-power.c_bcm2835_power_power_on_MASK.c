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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct bcm2835_power_domain {TYPE_1__ base; struct bcm2835_power* power; } ;
struct bcm2835_power {struct device* dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int PM_INRUSH_20_MA ; 
 int PM_INRUSH_3_5_MA ; 
 int PM_INRUSH_MASK ; 
 int PM_INRUSH_SHIFT ; 
 int PM_ISFUNC ; 
 int PM_ISPOW ; 
 int PM_MEMREP ; 
 int PM_MRDONE ; 
 int PM_POWOK ; 
 int PM_POWUP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct bcm2835_power_domain *pd, u32 pm_reg)
{
	struct bcm2835_power *power = pd->power;
	struct device *dev = power->dev;
	u64 start;
	int ret;
	int inrush;
	bool powok;

	/* If it was already powered on by the fw, leave it that way. */
	if (FUNC0(pm_reg) & PM_POWUP)
		return 0;

	/* Enable power.  Allowing too much current at once may result
	 * in POWOK never getting set, so start low and ramp it up as
	 * necessary to succeed.
	 */
	powok = false;
	for (inrush = PM_INRUSH_3_5_MA; inrush <= PM_INRUSH_20_MA; inrush++) {
		FUNC1(pm_reg,
			 (FUNC0(pm_reg) & ~PM_INRUSH_MASK) |
			 (inrush << PM_INRUSH_SHIFT) |
			 PM_POWUP);

		start = FUNC4();
		while (!(powok = !!(FUNC0(pm_reg) & PM_POWOK))) {
			FUNC2();
			if (FUNC4() - start >= 3000)
				break;
		}
	}
	if (!powok) {
		FUNC3(dev, "Timeout waiting for %s power OK\n",
			pd->base.name);
		ret = -ETIMEDOUT;
		goto err_disable_powup;
	}

	/* Disable electrical isolation */
	FUNC1(pm_reg, FUNC0(pm_reg) | PM_ISPOW);

	/* Repair memory */
	FUNC1(pm_reg, FUNC0(pm_reg) | PM_MEMREP);
	start = FUNC4();
	while (!(FUNC0(pm_reg) & PM_MRDONE)) {
		FUNC2();
		if (FUNC4() - start >= 1000) {
			FUNC3(dev, "Timeout waiting for %s memory repair\n",
				pd->base.name);
			ret = -ETIMEDOUT;
			goto err_disable_ispow;
		}
	}

	/* Disable functional isolation */
	FUNC1(pm_reg, FUNC0(pm_reg) | PM_ISFUNC);

	return 0;

err_disable_ispow:
	FUNC1(pm_reg, FUNC0(pm_reg) & ~PM_ISPOW);
err_disable_powup:
	FUNC1(pm_reg, FUNC0(pm_reg) & ~(PM_POWUP | PM_INRUSH_MASK));
	return ret;
}