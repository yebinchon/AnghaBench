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
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct regulator_config {int /*<<< orphan*/  regmap; int /*<<< orphan*/  of_node; struct da9063_regulator* driver_data; int /*<<< orphan*/  init_data; TYPE_2__* dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_regulator_match {int /*<<< orphan*/  of_node; } ;
struct da9063_regulators_pdata {scalar_t__ n_regulators; } ;
struct da9063_regulators {int n_regulators; struct da9063_regulator* regulator; } ;
struct TYPE_11__ {int /*<<< orphan*/  name; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; } ;
struct da9063_regulator {struct da9063_regulators_pdata* rdev; TYPE_4__ desc; struct da9063_regulators_pdata* suspend_sleep; TYPE_1__* info; struct da9063_regulators_pdata* sleep; struct da9063_regulators_pdata* suspend; struct da9063_regulators_pdata* mode; struct da9063* hw; } ;
struct da9063_dev_model {scalar_t__ type; int n_regulators; TYPE_1__* regulator_info; } ;
struct da9063 {scalar_t__ type; int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_12__ {scalar_t__ reg; } ;
struct TYPE_9__ {TYPE_6__ suspend_sleep; TYPE_6__ sleep; TYPE_6__ suspend; TYPE_6__ mode; TYPE_4__ desc; } ;

/* Variables and functions */
 int DA9063_BCORE_MERGE ; 
 int DA9063_BUCK_MERGE ; 
#define  DA9063_ID_BCORE1 133 
#define  DA9063_ID_BCORE2 132 
#define  DA9063_ID_BCORES_MERGED 131 
#define  DA9063_ID_BIO 130 
#define  DA9063_ID_BMEM 129 
#define  DA9063_ID_BMEM_BIO_MERGED 128 
 int /*<<< orphan*/  DA9063_REG_CONFIG_H ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_LOW ; 
 scalar_t__ FUNC0 (struct da9063_regulators_pdata*) ; 
 int FUNC1 (struct da9063_regulators_pdata*) ; 
 int /*<<< orphan*/  REGULATOR_VOLTAGE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct da9063_regulators_pdata*,int) ; 
 int /*<<< orphan*/  da9063_ldo_lim_event ; 
 struct da9063_regulators_pdata* FUNC3 (struct platform_device*,struct of_regulator_match**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 struct da9063* FUNC5 (int /*<<< orphan*/ ) ; 
 struct da9063_regulators* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_6__) ; 
 struct da9063_regulators_pdata* FUNC8 (TYPE_2__*,TYPE_4__*,struct regulator_config*) ; 
 int FUNC9 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct da9063_regulators*) ; 
 int /*<<< orphan*/  FUNC10 (struct regulator_config*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct da9063_regulators*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  regulator ; 
 struct da9063_dev_model* regulators_models ; 
 int /*<<< orphan*/  FUNC14 (struct da9063_regulators*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct da9063 *da9063 = FUNC5(pdev->dev.parent);
	struct of_regulator_match *da9063_reg_matches = NULL;
	struct da9063_regulators_pdata *regl_pdata;
	const struct da9063_dev_model *model;
	struct da9063_regulators *regulators;
	struct da9063_regulator *regl;
	struct regulator_config config;
	bool bcores_merged, bmem_bio_merged;
	int id, irq, n, n_regulators, ret, val;

	regl_pdata = FUNC3(pdev, &da9063_reg_matches);

	if (FUNC0(regl_pdata) || regl_pdata->n_regulators == 0) {
		FUNC4(&pdev->dev,
			"No regulators defined for the platform\n");
		return -ENODEV;
	}

	/* Find regulators set for particular device model */
	for (model = regulators_models; model->regulator_info; model++) {
		if (model->type == da9063->type)
			break;
	}
	if (!model->regulator_info) {
		FUNC4(&pdev->dev, "Chip model not recognised (%u)\n",
			da9063->type);
		return -ENODEV;
	}

	ret = FUNC13(da9063->regmap, DA9063_REG_CONFIG_H, &val);
	if (ret < 0) {
		FUNC4(&pdev->dev,
			"Error while reading BUCKs configuration\n");
		return ret;
	}
	bcores_merged = val & DA9063_BCORE_MERGE;
	bmem_bio_merged = val & DA9063_BUCK_MERGE;

	n_regulators = model->n_regulators;
	if (bcores_merged)
		n_regulators -= 2; /* remove BCORE1, BCORE2 */
	else
		n_regulators--;    /* remove BCORES_MERGED */
	if (bmem_bio_merged)
		n_regulators -= 2; /* remove BMEM, BIO */
	else
		n_regulators--;    /* remove BMEM_BIO_MERGED */

	/* Allocate memory required by usable regulators */
	regulators = FUNC6(&pdev->dev, FUNC14(regulators,
				  regulator, n_regulators), GFP_KERNEL);
	if (!regulators)
		return -ENOMEM;

	regulators->n_regulators = n_regulators;
	FUNC12(pdev, regulators);

	/* Register all regulators declared in platform information */
	n = 0;
	id = 0;
	while (n < regulators->n_regulators) {
		/* Skip regulator IDs depending on merge mode configuration */
		switch (id) {
		case DA9063_ID_BCORE1:
		case DA9063_ID_BCORE2:
			if (bcores_merged) {
				id++;
				continue;
			}
			break;
		case DA9063_ID_BMEM:
		case DA9063_ID_BIO:
			if (bmem_bio_merged) {
				id++;
				continue;
			}
			break;
		case DA9063_ID_BCORES_MERGED:
			if (!bcores_merged) {
				id++;
				continue;
			}
			break;
		case DA9063_ID_BMEM_BIO_MERGED:
			if (!bmem_bio_merged) {
				id++;
				continue;
			}
			break;
		}

		/* Initialise regulator structure */
		regl = &regulators->regulator[n];
		regl->hw = da9063;
		regl->info = &model->regulator_info[id];
		regl->desc = regl->info->desc;
		regl->desc.type = REGULATOR_VOLTAGE;
		regl->desc.owner = THIS_MODULE;

		if (regl->info->mode.reg) {
			regl->mode = FUNC7(&pdev->dev,
					da9063->regmap, regl->info->mode);
			if (FUNC0(regl->mode))
				return FUNC1(regl->mode);
		}

		if (regl->info->suspend.reg) {
			regl->suspend = FUNC7(&pdev->dev,
					da9063->regmap, regl->info->suspend);
			if (FUNC0(regl->suspend))
				return FUNC1(regl->suspend);
		}

		if (regl->info->sleep.reg) {
			regl->sleep = FUNC7(&pdev->dev,
					da9063->regmap, regl->info->sleep);
			if (FUNC0(regl->sleep))
				return FUNC1(regl->sleep);
		}

		if (regl->info->suspend_sleep.reg) {
			regl->suspend_sleep = FUNC7(&pdev->dev,
					da9063->regmap, regl->info->suspend_sleep);
			if (FUNC0(regl->suspend_sleep))
				return FUNC1(regl->suspend_sleep);
		}

		/* Register regulator */
		FUNC10(&config, 0, sizeof(config));
		config.dev = &pdev->dev;
		config.init_data = FUNC2(regl_pdata, id);
		config.driver_data = regl;
		if (da9063_reg_matches)
			config.of_node = da9063_reg_matches[id].of_node;
		config.regmap = da9063->regmap;
		regl->rdev = FUNC8(&pdev->dev, &regl->desc,
						     &config);
		if (FUNC0(regl->rdev)) {
			FUNC4(&pdev->dev,
				"Failed to register %s regulator\n",
				regl->desc.name);
			return FUNC1(regl->rdev);
		}
		id++;
		n++;
	}

	/* LDOs overcurrent event support */
	irq = FUNC11(pdev, "LDO_LIM");
	if (irq < 0)
		return irq;

	ret = FUNC9(&pdev->dev, irq,
				NULL, da9063_ldo_lim_event,
				IRQF_TRIGGER_LOW | IRQF_ONESHOT,
				"LDO_LIM", regulators);
	if (ret) {
		FUNC4(&pdev->dev, "Failed to request LDO_LIM IRQ.\n");
		return ret;
	}

	return 0;
}