#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tps65090_regulator_plat_data {scalar_t__ enable_ext_control; int /*<<< orphan*/ * reg_init_data; scalar_t__ gpiod; int /*<<< orphan*/  overcurrent_wait; scalar_t__ overcurrent_wait_valid; } ;
struct tps65090_regulator {scalar_t__ overcurrent_wait_valid; struct tps65090_platform_data* rdev; TYPE_2__* desc; int /*<<< orphan*/  overcurrent_wait; TYPE_3__* dev; } ;
struct tps65090_platform_data {struct tps65090_regulator_plat_data** reg_pdata; } ;
struct tps65090 {int /*<<< orphan*/  rmap; TYPE_1__* dev; } ;
struct regulator_dev {struct tps65090_regulator_plat_data** reg_pdata; } ;
struct regulator_config {scalar_t__ ena_gpiod; int /*<<< orphan*/ * of_node; int /*<<< orphan*/ * init_data; int /*<<< orphan*/  regmap; struct tps65090_regulator* driver_data; int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_regulator_match {int /*<<< orphan*/ * of_node; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; int /*<<< orphan*/ * ops; } ;
struct TYPE_9__ {scalar_t__ of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct tps65090_platform_data*) ; 
 scalar_t__ FUNC1 (struct tps65090_platform_data*) ; 
 int FUNC2 (struct tps65090_platform_data*) ; 
 int TPS65090_REGULATOR_MAX ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,...) ; 
 struct tps65090* FUNC5 (int /*<<< orphan*/ ) ; 
 struct tps65090_platform_data* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,scalar_t__) ; 
 struct tps65090_regulator* FUNC8 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 struct tps65090_platform_data* FUNC9 (TYPE_3__*,TYPE_2__*,struct regulator_config*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct tps65090_regulator*) ; 
 int FUNC12 (struct tps65090_regulator*,int) ; 
 int /*<<< orphan*/  tps65090_ext_control_ops ; 
 struct tps65090_platform_data* FUNC13 (struct platform_device*,struct of_regulator_match**) ; 
 int FUNC14 (struct tps65090_regulator*,struct tps65090_platform_data*) ; 
 TYPE_2__* tps65090_regulator_desc ; 
 int FUNC15 (struct tps65090_regulator*,struct tps65090_regulator_plat_data*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct tps65090 *tps65090_mfd = FUNC5(pdev->dev.parent);
	struct tps65090_regulator *ri = NULL;
	struct regulator_config config = { };
	struct regulator_dev *rdev;
	struct tps65090_regulator_plat_data *tps_pdata;
	struct tps65090_regulator *pmic;
	struct tps65090_platform_data *tps65090_pdata;
	struct of_regulator_match *tps65090_reg_matches = NULL;
	int num;
	int ret;

	FUNC3(&pdev->dev, "Probing regulator\n");

	tps65090_pdata = FUNC6(pdev->dev.parent);
	if (!tps65090_pdata && tps65090_mfd->dev->of_node)
		tps65090_pdata = FUNC13(pdev,
					&tps65090_reg_matches);
	if (FUNC1(tps65090_pdata)) {
		FUNC4(&pdev->dev, "Platform data missing\n");
		return tps65090_pdata ? FUNC2(tps65090_pdata) : -EINVAL;
	}

	pmic = FUNC8(&pdev->dev,
			    TPS65090_REGULATOR_MAX, sizeof(*pmic),
			    GFP_KERNEL);
	if (!pmic)
		return -ENOMEM;

	for (num = 0; num < TPS65090_REGULATOR_MAX; num++) {
		tps_pdata = tps65090_pdata->reg_pdata[num];

		ri = &pmic[num];
		ri->dev = &pdev->dev;
		ri->desc = &tps65090_regulator_desc[num];
		if (tps_pdata) {
			ri->overcurrent_wait_valid =
				tps_pdata->overcurrent_wait_valid;
			ri->overcurrent_wait = tps_pdata->overcurrent_wait;
		}

		/*
		 * TPS5090 DCDC support the control from external digital input.
		 * Configure it as per platform data.
		 */
		if (tps_pdata && FUNC10(num) && tps_pdata->reg_init_data) {
			if (tps_pdata->enable_ext_control) {
				config.ena_gpiod = tps_pdata->gpiod;
				ri->desc->ops = &tps65090_ext_control_ops;
			} else {
				ret = FUNC15(
						ri, tps_pdata);
				if (ret < 0) {
					FUNC4(&pdev->dev,
						"failed disable ext control\n");
					return ret;
				}
			}
		}

		config.dev = pdev->dev.parent;
		config.driver_data = ri;
		config.regmap = tps65090_mfd->rmap;
		if (tps_pdata)
			config.init_data = tps_pdata->reg_init_data;
		else
			config.init_data = NULL;
		if (tps65090_reg_matches)
			config.of_node = tps65090_reg_matches[num].of_node;
		else
			config.of_node = NULL;

		/*
		 * Hand the GPIO descriptor management over to the regulator
		 * core, remove it from devres management.
		 */
		if (config.ena_gpiod)
			FUNC7(&pdev->dev, config.ena_gpiod);
		rdev = FUNC9(&pdev->dev, ri->desc, &config);
		if (FUNC0(rdev)) {
			FUNC4(&pdev->dev, "failed to register regulator %s\n",
				ri->desc->name);
			return FUNC2(rdev);
		}
		ri->rdev = rdev;

		if (ri->overcurrent_wait_valid) {
			ret = FUNC14(ri, rdev);
			if (ret < 0)
				return ret;
		}

		/* Enable external control if it is require */
		if (tps_pdata && FUNC10(num) && tps_pdata->reg_init_data &&
				tps_pdata->enable_ext_control) {
			ret = FUNC12(ri, true);
			if (ret < 0)
				return ret;
		}
	}

	FUNC11(pdev, pmic);
	return 0;
}