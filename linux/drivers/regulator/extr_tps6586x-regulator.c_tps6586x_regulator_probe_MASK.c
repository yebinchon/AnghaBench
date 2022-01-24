#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int name; } ;
struct tps6586x_regulator {TYPE_4__ desc; } ;
struct tps6586x_platform_data {struct regulator_init_data** reg_init_data; } ;
struct regulator_init_data {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  of_node; struct tps6586x_regulator* driver_data; struct regulator_init_data* init_data; TYPE_1__* dev; } ;
struct TYPE_9__ {TYPE_1__* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_regulator_match {int /*<<< orphan*/  of_node; } ;
struct TYPE_8__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int TPS6586X_ID_MAX_REGULATOR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 struct tps6586x_platform_data* FUNC4 (TYPE_1__*) ; 
 struct regulator_dev* FUNC5 (TYPE_3__*,TYPE_4__*,struct regulator_config*) ; 
 struct tps6586x_regulator* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,struct regulator_dev*) ; 
 int FUNC8 (TYPE_1__*) ; 
 struct tps6586x_platform_data* FUNC9 (struct platform_device*,struct of_regulator_match**) ; 
 int FUNC10 (TYPE_1__*,struct tps6586x_regulator*) ; 
 int FUNC11 (struct platform_device*,int,struct regulator_init_data*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct tps6586x_regulator *ri = NULL;
	struct regulator_config config = { };
	struct regulator_dev *rdev;
	struct regulator_init_data *reg_data;
	struct tps6586x_platform_data *pdata;
	struct of_regulator_match *tps6586x_reg_matches = NULL;
	int version;
	int id;
	int err;

	FUNC2(&pdev->dev, "Probing regulator\n");

	pdata = FUNC4(pdev->dev.parent);
	if ((!pdata) && (pdev->dev.parent->of_node))
		pdata = FUNC9(pdev,
					&tps6586x_reg_matches);

	if (!pdata) {
		FUNC3(&pdev->dev, "Platform data not available, exiting\n");
		return -ENODEV;
	}

	version = FUNC8(pdev->dev.parent);

	for (id = 0; id < TPS6586X_ID_MAX_REGULATOR; ++id) {
		reg_data = pdata->reg_init_data[id];

		ri = FUNC6(id, version);

		if (!ri) {
			FUNC3(&pdev->dev, "invalid regulator ID specified\n");
			return -EINVAL;
		}

		err = FUNC10(pdev->dev.parent, ri);
		if (err) {
			FUNC3(&pdev->dev,
				"regulator %d preinit failed, e %d\n", id, err);
			return err;
		}

		config.dev = pdev->dev.parent;
		config.init_data = reg_data;
		config.driver_data = ri;

		if (tps6586x_reg_matches)
			config.of_node = tps6586x_reg_matches[id].of_node;

		rdev = FUNC5(&pdev->dev, &ri->desc, &config);
		if (FUNC0(rdev)) {
			FUNC3(&pdev->dev, "failed to register regulator %s\n",
					ri->desc.name);
			return FUNC1(rdev);
		}

		if (reg_data) {
			err = FUNC11(pdev, id,
					reg_data);
			if (err < 0) {
				FUNC3(&pdev->dev,
					"Slew rate config failed, e %d\n", err);
				return err;
			}
		}
	}

	FUNC7(pdev, rdev);
	return 0;
}