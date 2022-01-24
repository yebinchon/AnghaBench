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
typedef  int u32 ;
struct regulator_desc {size_t id; } ;
struct regulator_config {struct max77620_regulator* driver_data; } ;
struct max77620_regulator_pdata {int active_fps_src; int active_fps_pu_slot; int active_fps_pd_slot; int suspend_fps_src; int suspend_fps_pu_slot; int suspend_fps_pd_slot; int power_ok; int ramp_rate_setting; } ;
struct max77620_regulator {struct max77620_regulator_pdata* reg_pdata; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int MAX77620_FPS_SRC_DEF ; 
 int FUNC0 (struct max77620_regulator*,size_t) ; 
 int FUNC1 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC2(struct device_node *np,
				const struct regulator_desc *desc,
				struct regulator_config *config)
{
	struct max77620_regulator *pmic = config->driver_data;
	struct max77620_regulator_pdata *rpdata = &pmic->reg_pdata[desc->id];
	u32 pval;
	int ret;

	ret = FUNC1(np, "maxim,active-fps-source", &pval);
	rpdata->active_fps_src = (!ret) ? pval : MAX77620_FPS_SRC_DEF;

	ret = FUNC1(np, "maxim,active-fps-power-up-slot", &pval);
	rpdata->active_fps_pu_slot = (!ret) ? pval : -1;

	ret = FUNC1(
			np, "maxim,active-fps-power-down-slot", &pval);
	rpdata->active_fps_pd_slot = (!ret) ? pval : -1;

	ret = FUNC1(np, "maxim,suspend-fps-source", &pval);
	rpdata->suspend_fps_src = (!ret) ? pval : -1;

	ret = FUNC1(
			np, "maxim,suspend-fps-power-up-slot", &pval);
	rpdata->suspend_fps_pu_slot = (!ret) ? pval : -1;

	ret = FUNC1(
			np, "maxim,suspend-fps-power-down-slot", &pval);
	rpdata->suspend_fps_pd_slot = (!ret) ? pval : -1;

	ret = FUNC1(np, "maxim,power-ok-control", &pval);
	if (!ret)
		rpdata->power_ok = pval;
	else
		rpdata->power_ok = -1;

	ret = FUNC1(np, "maxim,ramp-rate-setting", &pval);
	rpdata->ramp_rate_setting = (!ret) ? pval : 0;

	return FUNC0(pmic, desc->id);
}