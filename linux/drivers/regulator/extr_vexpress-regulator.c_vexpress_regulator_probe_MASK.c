#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ max_uV; scalar_t__ min_uV; scalar_t__ apply_uV; } ;
struct regulator_init_data {TYPE_1__ constraints; } ;
struct regulator_dev {int dummy; } ;
struct regulator_desc {int continuous_voltage_range; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct regulator_config {int /*<<< orphan*/  of_node; struct regulator_init_data* init_data; TYPE_2__* dev; struct regulator_dev* regmap; } ;
typedef  struct regulator_dev regmap ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  REGULATOR_VOLTAGE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct regulator_desc* FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC4 (TYPE_2__*) ; 
 struct regulator_dev* FUNC5 (TYPE_2__*,struct regulator_desc*,struct regulator_config*) ; 
 struct regulator_init_data* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,struct regulator_desc*) ; 
 int /*<<< orphan*/  vexpress_regulator_ops ; 
 int /*<<< orphan*/  vexpress_regulator_ops_ro ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct regulator_desc *desc;
	struct regulator_init_data *init_data;
	struct regulator_config config = { };
	struct regulator_dev *rdev;
	struct regmap *regmap;

	desc = FUNC3(&pdev->dev, sizeof(*desc), GFP_KERNEL);
	if (!desc)
		return -ENOMEM;

	regmap = FUNC4(&pdev->dev);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	desc->name = FUNC2(&pdev->dev);
	desc->type = REGULATOR_VOLTAGE;
	desc->owner = THIS_MODULE;
	desc->continuous_voltage_range = true;

	init_data = FUNC6(&pdev->dev, pdev->dev.of_node,
					       desc);
	if (!init_data)
		return -EINVAL;

	init_data->constraints.apply_uV = 0;
	if (init_data->constraints.min_uV && init_data->constraints.max_uV)
		desc->ops = &vexpress_regulator_ops;
	else
		desc->ops = &vexpress_regulator_ops_ro;

	config.regmap = regmap;
	config.dev = &pdev->dev;
	config.init_data = init_data;
	config.of_node = pdev->dev.of_node;

	rdev = FUNC5(&pdev->dev, desc, &config);
	if (FUNC0(rdev))
		return FUNC1(rdev);

	return 0;
}