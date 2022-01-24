#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct power_supply_battery_info {int precharge_current_ua; int charge_term_current_ua; } ;
struct bq24190_dev_info {int sys_min; int iprechg; int iterm; TYPE_1__* dev; int /*<<< orphan*/  charger; } ;
struct TYPE_3__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int BQ24190_REG_PCTCC_IPRECHG_MAX ; 
 int BQ24190_REG_PCTCC_IPRECHG_MIN ; 
 int BQ24190_REG_PCTCC_ITERM_MAX ; 
 int BQ24190_REG_PCTCC_ITERM_MIN ; 
 int BQ24190_REG_POC_SYS_MIN_MAX ; 
 int BQ24190_REG_POC_SYS_MIN_MIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char const* const,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct power_supply_battery_info*) ; 

__attribute__((used)) static int FUNC3(struct bq24190_dev_info *bdi)
{
	const char * const s = "ti,system-minimum-microvolt";
	struct power_supply_battery_info info = {};
	int v;

	if (FUNC1(bdi->dev, s, &v) == 0) {
		v /= 1000;
		if (v >= BQ24190_REG_POC_SYS_MIN_MIN
		 && v <= BQ24190_REG_POC_SYS_MIN_MAX)
			bdi->sys_min = v;
		else
			FUNC0(bdi->dev, "invalid value for %s: %u\n", s, v);
	}

	if (bdi->dev->of_node &&
	    !FUNC2(bdi->charger, &info)) {
		v = info.precharge_current_ua / 1000;
		if (v >= BQ24190_REG_PCTCC_IPRECHG_MIN
		 && v <= BQ24190_REG_PCTCC_IPRECHG_MAX)
			bdi->iprechg = v;
		else
			FUNC0(bdi->dev, "invalid value for battery:precharge-current-microamp: %d\n",
				 v);

		v = info.charge_term_current_ua / 1000;
		if (v >= BQ24190_REG_PCTCC_ITERM_MIN
		 && v <= BQ24190_REG_PCTCC_ITERM_MAX)
			bdi->iterm = v;
		else
			FUNC0(bdi->dev, "invalid value for battery:charge-term-current-microamp: %d\n",
				 v);
	}

	return 0;
}