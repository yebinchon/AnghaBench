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
struct max77620_regulator_pdata {int active_fps_src; scalar_t__ ramp_rate_setting; } ;
struct max77620_regulator {int* current_power_mode; int* enable_power_mode; struct max77620_regulator_pdata* reg_pdata; } ;

/* Variables and functions */
 int MAX77620_FPS_SRC_DEF ; 
 int MAX77620_FPS_SRC_NONE ; 
 int MAX77620_POWER_MODE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct max77620_regulator*,int) ; 
 int FUNC1 (struct max77620_regulator*,int) ; 
 int FUNC2 (struct max77620_regulator*,int) ; 
 int FUNC3 (struct max77620_regulator*,int,int) ; 
 int FUNC4 (struct max77620_regulator*,int,int) ; 
 int FUNC5 (struct max77620_regulator*,int,int) ; 
 int FUNC6 (struct max77620_regulator*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct max77620_regulator *pmic, int id)
{
	struct max77620_regulator_pdata *rpdata = &pmic->reg_pdata[id];
	int ret;

	FUNC0(pmic, id);

	/* Update power mode */
	ret = FUNC2(pmic, id);
	if (ret < 0)
		return ret;

	pmic->current_power_mode[id] = ret;
	pmic->enable_power_mode[id] = MAX77620_POWER_MODE_NORMAL;

	if (rpdata->active_fps_src == MAX77620_FPS_SRC_DEF) {
		ret = FUNC1(pmic, id);
		if (ret < 0)
			return ret;
		rpdata->active_fps_src = ret;
	}

	 /* If rails are externally control of FPS then enable it always. */
	if (rpdata->active_fps_src == MAX77620_FPS_SRC_NONE) {
		ret = FUNC5(pmic,
					pmic->enable_power_mode[id], id);
		if (ret < 0)
			return ret;
	} else {
		if (pmic->current_power_mode[id] !=
		     pmic->enable_power_mode[id]) {
			ret = FUNC5(pmic,
					pmic->enable_power_mode[id], id);
			if (ret < 0)
				return ret;
		}
	}

	ret = FUNC4(pmic, rpdata->active_fps_src, id);
	if (ret < 0)
		return ret;

	ret = FUNC3(pmic, id, false);
	if (ret < 0)
		return ret;

	if (rpdata->ramp_rate_setting) {
		ret = FUNC6(pmic, id,
					     rpdata->ramp_rate_setting);
		if (ret < 0)
			return ret;
	}

	return 0;
}