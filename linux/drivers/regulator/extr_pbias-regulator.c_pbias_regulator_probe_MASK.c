#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct resource {unsigned int start; } ;
struct regulator_config {scalar_t__ of_node; struct pbias_regulator_data* driver_data; scalar_t__ init_data; TYPE_2__* dev; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_12__ {unsigned int vsel_reg; unsigned int enable_reg; int /*<<< orphan*/  disable_val; int /*<<< orphan*/  enable_val; int /*<<< orphan*/  enable_mask; int /*<<< orphan*/  vsel_mask; int /*<<< orphan*/  enable_time; int /*<<< orphan*/  n_voltages; int /*<<< orphan*/  volt_table; int /*<<< orphan*/ * ops; int /*<<< orphan*/  type; int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct pbias_regulator_data {struct regmap* dev; TYPE_6__ desc; struct pbias_reg_info const* info; struct regmap* syscon; } ;
struct pbias_reg_info {int /*<<< orphan*/  disable_val; int /*<<< orphan*/  enable; int /*<<< orphan*/  enable_mask; int /*<<< orphan*/  vmode; int /*<<< orphan*/  enable_time; int /*<<< orphan*/  n_voltages; int /*<<< orphan*/  pbias_volt_table; int /*<<< orphan*/  name; } ;
struct pbias_of_data {unsigned int offset; } ;
struct of_device_id {struct pbias_of_data* data; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {scalar_t__ of_node; scalar_t__ init_data; struct pbias_reg_info* driver_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int PBIAS_NUM_REGS ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  REGULATOR_VOLTAGE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 struct pbias_regulator_data* FUNC4 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC5 (TYPE_2__*,TYPE_6__*,struct regulator_config*) ; 
 struct of_device_id* FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,struct device_node*,TYPE_1__*,int) ; 
 TYPE_1__* pbias_matches ; 
 int /*<<< orphan*/  pbias_of_match ; 
 int /*<<< orphan*/  pbias_regulator_voltage_ops ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct pbias_regulator_data*) ; 
 struct regmap* FUNC11 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct pbias_regulator_data *drvdata;
	struct resource *res;
	struct regulator_config cfg = { };
	struct regmap *syscon;
	const struct pbias_reg_info *info;
	int ret = 0;
	int count, idx, data_idx = 0;
	const struct of_device_id *match;
	const struct pbias_of_data *data;
	unsigned int offset;

	count = FUNC8(&pdev->dev, np, pbias_matches,
						PBIAS_NUM_REGS);
	if (count < 0)
		return count;

	drvdata = FUNC4(&pdev->dev,
			       count, sizeof(struct pbias_regulator_data),
			       GFP_KERNEL);
	if (!drvdata)
		return -ENOMEM;

	syscon = FUNC11(np, "syscon");
	if (FUNC0(syscon))
		return FUNC1(syscon);

	match = FUNC6(FUNC7(pbias_of_match), &pdev->dev);
	if (match && match->data) {
		data = match->data;
		offset = data->offset;
	} else {
		res = FUNC9(pdev, IORESOURCE_MEM, 0);
		if (!res)
			return -EINVAL;

		offset = res->start;
		FUNC2(&pdev->dev,
			 "using legacy dt data for pbias offset\n");
	}

	cfg.regmap = syscon;
	cfg.dev = &pdev->dev;

	for (idx = 0; idx < PBIAS_NUM_REGS && data_idx < count; idx++) {
		if (!pbias_matches[idx].init_data ||
			!pbias_matches[idx].of_node)
			continue;

		info = pbias_matches[idx].driver_data;
		if (!info)
			return -ENODEV;

		drvdata[data_idx].syscon = syscon;
		drvdata[data_idx].info = info;
		drvdata[data_idx].desc.name = info->name;
		drvdata[data_idx].desc.owner = THIS_MODULE;
		drvdata[data_idx].desc.type = REGULATOR_VOLTAGE;
		drvdata[data_idx].desc.ops = &pbias_regulator_voltage_ops;
		drvdata[data_idx].desc.volt_table = info->pbias_volt_table;
		drvdata[data_idx].desc.n_voltages = info->n_voltages;
		drvdata[data_idx].desc.enable_time = info->enable_time;
		drvdata[data_idx].desc.vsel_reg = offset;
		drvdata[data_idx].desc.vsel_mask = info->vmode;
		drvdata[data_idx].desc.enable_reg = offset;
		drvdata[data_idx].desc.enable_mask = info->enable_mask;
		drvdata[data_idx].desc.enable_val = info->enable;
		drvdata[data_idx].desc.disable_val = info->disable_val;

		cfg.init_data = pbias_matches[idx].init_data;
		cfg.driver_data = &drvdata[data_idx];
		cfg.of_node = pbias_matches[idx].of_node;

		drvdata[data_idx].dev = FUNC5(&pdev->dev,
					&drvdata[data_idx].desc, &cfg);
		if (FUNC0(drvdata[data_idx].dev)) {
			ret = FUNC1(drvdata[data_idx].dev);
			FUNC3(&pdev->dev,
				"Failed to register regulator: %d\n", ret);
			goto err_regulator;
		}
		data_idx++;
	}

	FUNC10(pdev, drvdata);

err_regulator:
	return ret;
}