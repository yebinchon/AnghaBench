#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_9__ {struct device_node* of_node; TYPE_1__* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
struct as3722_regulators {struct as3722_regulator_config_data* reg_config_data; } ;
struct as3722_regulator_config_data {int ext_control; int /*<<< orphan*/  enable_tracking; int /*<<< orphan*/  reg_init; } ;
struct TYPE_10__ {struct device_node* of_node; int /*<<< orphan*/  init_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 
 int ENODEV ; 
 TYPE_3__* as3722_regulator_matches ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*) ; 
 int FUNC6 (struct device_node*,char*,int*) ; 
 int FUNC7 (TYPE_2__*,struct device_node*,TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev,
		struct as3722_regulators *as3722_regs)
{
	struct device_node *np;
	struct as3722_regulator_config_data *reg_config;
	u32 prop;
	int id;
	int ret;

	np = FUNC3(pdev->dev.parent->of_node, "regulators");
	if (!np) {
		FUNC1(&pdev->dev, "Device is not having regulators node\n");
		return -ENODEV;
	}
	pdev->dev.of_node = np;

	ret = FUNC7(&pdev->dev, np, as3722_regulator_matches,
			FUNC0(as3722_regulator_matches));
	FUNC4(np);
	if (ret < 0) {
		FUNC1(&pdev->dev, "Parsing of regulator node failed: %d\n",
			ret);
		return ret;
	}

	for (id = 0; id < FUNC0(as3722_regulator_matches); ++id) {
		struct device_node *reg_node;

		reg_config = &as3722_regs->reg_config_data[id];
		reg_config->reg_init = as3722_regulator_matches[id].init_data;
		reg_node = as3722_regulator_matches[id].of_node;

		if (!reg_config->reg_init || !reg_node)
			continue;

		ret = FUNC6(reg_node, "ams,ext-control", &prop);
		if (!ret) {
			if (prop < 3)
				reg_config->ext_control = prop;
			else
				FUNC2(&pdev->dev,
					"ext-control have invalid option: %u\n",
					prop);
		}
		reg_config->enable_tracking =
			FUNC5(reg_node, "ams,enable-tracking");
	}
	return 0;
}