#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct stpmic1_regulator_cfg {scalar_t__ mask_reset_reg; int /*<<< orphan*/  mask_reset_mask; TYPE_3__ desc; } ;
struct stpmic1 {int /*<<< orphan*/  regmap; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  of_node; void* driver_data; int /*<<< orphan*/  regmap; int /*<<< orphan*/  init_data; TYPE_1__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  name; } ;
struct of_regulator_match {int /*<<< orphan*/  of_node; int /*<<< orphan*/  init_data; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_SHARED ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 struct stpmic1* FUNC3 (int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC4 (TYPE_1__*,TYPE_3__*,struct regulator_config*) ; 
 int FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct regulator_dev*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stpmic1_curlim_irq_handler ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev, int id,
				      struct of_regulator_match *match,
				      const struct stpmic1_regulator_cfg *cfg)
{
	struct stpmic1 *pmic_dev = FUNC3(pdev->dev.parent);
	struct regulator_dev *rdev;
	struct regulator_config config = {};
	int ret = 0;
	int irq;

	config.dev = &pdev->dev;
	config.init_data = match->init_data;
	config.of_node = match->of_node;
	config.regmap = pmic_dev->regmap;
	config.driver_data = (void *)cfg;

	rdev = FUNC4(&pdev->dev, &cfg->desc, &config);
	if (FUNC0(rdev)) {
		FUNC2(&pdev->dev, "failed to register %s regulator\n",
			cfg->desc.name);
		return FUNC1(rdev);
	}

	/* set mask reset */
	if (FUNC6(config.of_node, "st,mask-reset", NULL) &&
	    cfg->mask_reset_reg != 0) {
		ret = FUNC8(pmic_dev->regmap,
					 cfg->mask_reset_reg,
					 cfg->mask_reset_mask,
					 cfg->mask_reset_mask);
		if (ret) {
			FUNC2(&pdev->dev, "set mask reset failed\n");
			return ret;
		}
	}

	/* setup an irq handler for over-current detection */
	irq = FUNC7(config.of_node, 0);
	if (irq > 0) {
		ret = FUNC5(&pdev->dev,
						irq, NULL,
						stpmic1_curlim_irq_handler,
						IRQF_ONESHOT | IRQF_SHARED,
						pdev->name, rdev);
		if (ret) {
			FUNC2(&pdev->dev, "Request IRQ failed\n");
			return ret;
		}
	}
	return 0;
}