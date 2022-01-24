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
struct watchdog_device {int timeout; } ;
struct mlxreg_wdt {size_t timeout_idx; scalar_t__ wdt_type; int /*<<< orphan*/  regmap; TYPE_1__* pdata; } ;
struct mlxreg_core_data {int mask; int /*<<< orphan*/  reg; } ;
struct TYPE_2__ {struct mlxreg_core_data* data; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 unsigned int MLXREG_WDT_CLOCK_SCALE ; 
 scalar_t__ MLX_WDT_TYPE1 ; 
 int FUNC1 (struct watchdog_device*) ; 
 int FUNC2 (struct watchdog_device*) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct watchdog_device*) ; 
 struct mlxreg_wdt* FUNC7 (struct watchdog_device*) ; 

__attribute__((used)) static int FUNC8(struct watchdog_device *wdd,
				  unsigned int timeout)
{
	struct mlxreg_wdt *wdt = FUNC7(wdd);
	struct mlxreg_core_data *reg_data = &wdt->pdata->data[wdt->timeout_idx];
	u32 regval, set_time, hw_timeout;
	int rc;

	if (wdt->wdt_type == MLX_WDT_TYPE1) {
		rc = FUNC4(wdt->regmap, reg_data->reg, &regval);
		if (rc)
			return rc;

		hw_timeout = FUNC3(timeout * MLXREG_WDT_CLOCK_SCALE);
		regval = (regval & reg_data->mask) | hw_timeout;
		/* Rowndown to actual closest number of sec. */
		set_time = FUNC0(hw_timeout) / MLXREG_WDT_CLOCK_SCALE;
	} else {
		set_time = timeout;
		regval = timeout;
	}

	wdd->timeout = set_time;
	rc = FUNC5(wdt->regmap, reg_data->reg, regval);

	if (!rc) {
		/*
		 * Restart watchdog with new timeout period
		 * if watchdog is already started.
		 */
		if (FUNC6(wdd)) {
			rc = FUNC2(wdd);
			if (!rc)
				rc = FUNC1(wdd);
		}
	}

	return rc;
}