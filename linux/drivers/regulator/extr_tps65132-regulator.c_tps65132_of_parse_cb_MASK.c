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
struct tps65132_regulator {int /*<<< orphan*/  dev; struct tps65132_reg_pdata* reg_pdata; } ;
struct tps65132_reg_pdata {int /*<<< orphan*/  act_dis_time_us; void* act_dis_gpiod; void* en_gpiod; } ;
struct regulator_desc {size_t id; } ;
struct regulator_config {struct tps65132_regulator* driver_data; } ;
struct device_node {int /*<<< orphan*/  fwnode; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device_node *np,
				const struct regulator_desc *desc,
				struct regulator_config *config)
{
	struct tps65132_regulator *tps = config->driver_data;
	struct tps65132_reg_pdata *rpdata = &tps->reg_pdata[desc->id];
	int ret;

	rpdata->en_gpiod = FUNC3(tps->dev,
					"enable", 0, &np->fwnode, 0, "enable");
	if (FUNC0(rpdata->en_gpiod)) {
		ret = FUNC1(rpdata->en_gpiod);

		/* Ignore the error other than probe defer */
		if (ret == -EPROBE_DEFER)
			return ret;
		return 0;
	}

	rpdata->act_dis_gpiod = FUNC3(
					tps->dev, "active-discharge", 0,
					&np->fwnode, 0, "active-discharge");
	if (FUNC0(rpdata->act_dis_gpiod)) {
		ret = FUNC1(rpdata->act_dis_gpiod);

		/* Ignore the error other than probe defer */
		if (ret == -EPROBE_DEFER)
			return ret;

		return 0;
	}

	ret = FUNC4(np, "ti,active-discharge-time-us",
				   &rpdata->act_dis_time_us);
	if (ret < 0) {
		FUNC2(tps->dev, "Failed to read active discharge time:%d\n",
			ret);
		return ret;
	}

	return 0;
}