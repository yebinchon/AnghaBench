#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct regulator_config {int /*<<< orphan*/  regmap; struct da9062_regulator* driver_data; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct da9062_regulators {int n_regulators; int irq_ldo_lim; struct da9062_regulator* regulator; } ;
struct TYPE_11__ {scalar_t__ reg; } ;
struct TYPE_10__ {int /*<<< orphan*/  name; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; } ;
struct da9062_regulator_info {TYPE_5__ suspend_sleep; TYPE_5__ sleep; TYPE_5__ suspend; TYPE_5__ mode; TYPE_3__ desc; } ;
struct da9062_regulator {void* rdev; TYPE_3__ desc; void* suspend_sleep; struct da9062_regulator_info const* info; void* sleep; void* suspend; void* mode; struct da9062* hw; } ;
struct da9062 {int chip_type; int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  config ;

/* Variables and functions */
#define  COMPAT_TYPE_DA9061 129 
#define  COMPAT_TYPE_DA9062 128 
 int DA9061_MAX_REGULATORS ; 
 int DA9062_MAX_REGULATORS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  REGULATOR_VOLTAGE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  da9062_ldo_lim_event ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 struct da9062* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct da9062_regulators* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_5__) ; 
 void* FUNC7 (TYPE_1__*,TYPE_3__*,struct regulator_config*) ; 
 int FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct da9062_regulators*) ; 
 struct da9062_regulator_info* local_da9061_regulator_info ; 
 struct da9062_regulator_info* local_da9062_regulator_info ; 
 int /*<<< orphan*/  FUNC9 (struct regulator_config*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct da9062_regulators*) ; 
 int /*<<< orphan*/  regulator ; 
 int /*<<< orphan*/  FUNC12 (struct da9062_regulators*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct da9062 *chip = FUNC3(pdev->dev.parent);
	struct da9062_regulators *regulators;
	struct da9062_regulator *regl;
	struct regulator_config config = { };
	const struct da9062_regulator_info *rinfo;
	int irq, n, ret;
	int max_regulators;

	switch (chip->chip_type) {
	case COMPAT_TYPE_DA9061:
		max_regulators = DA9061_MAX_REGULATORS;
		rinfo = local_da9061_regulator_info;
		break;
	case COMPAT_TYPE_DA9062:
		max_regulators = DA9062_MAX_REGULATORS;
		rinfo = local_da9062_regulator_info;
		break;
	default:
		FUNC2(chip->dev, "Unrecognised chip type\n");
		return -ENODEV;
	}

	/* Allocate memory required by usable regulators */
	regulators = FUNC5(&pdev->dev, FUNC12(regulators, regulator,
				  max_regulators), GFP_KERNEL);
	if (!regulators)
		return -ENOMEM;

	regulators->n_regulators = max_regulators;
	FUNC11(pdev, regulators);

	n = 0;
	while (n < regulators->n_regulators) {
		/* Initialise regulator structure */
		regl = &regulators->regulator[n];
		regl->hw = chip;
		regl->info = &rinfo[n];
		regl->desc = regl->info->desc;
		regl->desc.type = REGULATOR_VOLTAGE;
		regl->desc.owner = THIS_MODULE;

		if (regl->info->mode.reg) {
			regl->mode = FUNC6(
					&pdev->dev,
					chip->regmap,
					regl->info->mode);
			if (FUNC0(regl->mode))
				return FUNC1(regl->mode);
		}

		if (regl->info->suspend.reg) {
			regl->suspend = FUNC6(
					&pdev->dev,
					chip->regmap,
					regl->info->suspend);
			if (FUNC0(regl->suspend))
				return FUNC1(regl->suspend);
		}

		if (regl->info->sleep.reg) {
			regl->sleep = FUNC6(
					&pdev->dev,
					chip->regmap,
					regl->info->sleep);
			if (FUNC0(regl->sleep))
				return FUNC1(regl->sleep);
		}

		if (regl->info->suspend_sleep.reg) {
			regl->suspend_sleep = FUNC6(
					&pdev->dev,
					chip->regmap,
					regl->info->suspend_sleep);
			if (FUNC0(regl->suspend_sleep))
				return FUNC1(regl->suspend_sleep);
		}

		/* Register regulator */
		FUNC9(&config, 0, sizeof(config));
		config.dev = chip->dev;
		config.driver_data = regl;
		config.regmap = chip->regmap;

		regl->rdev = FUNC7(&pdev->dev, &regl->desc,
						     &config);
		if (FUNC0(regl->rdev)) {
			FUNC2(&pdev->dev,
				"Failed to register %s regulator\n",
				regl->desc.name);
			return FUNC1(regl->rdev);
		}

		n++;
	}

	/* LDOs overcurrent event support */
	irq = FUNC10(pdev, "LDO_LIM");
	if (irq < 0)
		return irq;
	regulators->irq_ldo_lim = irq;

	ret = FUNC8(&pdev->dev, irq,
					NULL, da9062_ldo_lim_event,
					IRQF_TRIGGER_LOW | IRQF_ONESHOT,
					"LDO_LIM", regulators);
	if (ret) {
		FUNC4(&pdev->dev,
			 "Failed to request LDO_LIM IRQ.\n");
		regulators->irq_ldo_lim = -ENXIO;
	}

	return 0;
}