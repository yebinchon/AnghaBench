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
struct tps62360_regulator_platform_data {int vsel0_def_state; int vsel1_def_state; int en_internal_pulldn; int en_discharge; void* vsel1_gpio; void* vsel0_gpio; int /*<<< orphan*/  reg_init_data; } ;
struct regulator_desc {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct tps62360_regulator_platform_data* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct device_node*,struct regulator_desc const*) ; 

__attribute__((used)) static struct tps62360_regulator_platform_data *
	FUNC5(struct device *dev,
				      const struct regulator_desc *desc)
{
	struct tps62360_regulator_platform_data *pdata;
	struct device_node *np = dev->of_node;

	pdata = FUNC1(dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return NULL;

	pdata->reg_init_data = FUNC4(dev, dev->of_node,
							  desc);
	if (!pdata->reg_init_data) {
		FUNC0(dev, "Not able to get OF regulator init data\n");
		return NULL;
	}

	pdata->vsel0_gpio = FUNC3(np, "vsel0-gpio", 0);
	pdata->vsel1_gpio = FUNC3(np, "vsel1-gpio", 0);

	if (FUNC2(np, "ti,vsel0-state-high", NULL))
		pdata->vsel0_def_state = 1;

	if (FUNC2(np, "ti,vsel1-state-high", NULL))
		pdata->vsel1_def_state = 1;

	if (FUNC2(np, "ti,enable-pull-down", NULL))
		pdata->en_internal_pulldn = true;

	if (FUNC2(np, "ti,enable-vout-discharge", NULL))
		pdata->en_discharge = true;

	return pdata;
}