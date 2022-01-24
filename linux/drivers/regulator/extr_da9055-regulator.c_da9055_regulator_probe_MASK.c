#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct regulator_config {int /*<<< orphan*/  init_data; int /*<<< orphan*/  regmap; struct da9055_regulator* driver_data; int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  parent; } ;
struct platform_device {size_t id; TYPE_2__ dev; int /*<<< orphan*/  name; } ;
struct da9055_regulator {int /*<<< orphan*/  rdev; TYPE_1__* info; struct da9055* da9055; } ;
struct da9055_pdata {int /*<<< orphan*/ * regulators; } ;
struct da9055 {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_4__ reg_desc; } ;

/* Variables and functions */
 size_t DA9055_ID_LDO5 ; 
 size_t DA9055_ID_LDO6 ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQF_ONESHOT ; 
 int IRQF_PROBE_SHARED ; 
 int IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct da9055_regulator*,struct regulator_config*,struct da9055_pdata*,size_t) ; 
 int /*<<< orphan*/  da9055_ldo5_6_oc_irq ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 struct da9055* FUNC4 (int /*<<< orphan*/ ) ; 
 struct da9055_pdata* FUNC5 (int /*<<< orphan*/ ) ; 
 struct da9055_regulator* FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_4__*,struct regulator_config*) ; 
 int FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct da9055_regulator*) ; 
 TYPE_1__* FUNC9 (size_t) ; 
 int FUNC10 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct da9055_regulator*) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct regulator_config config = { };
	struct da9055_regulator *regulator;
	struct da9055 *da9055 = FUNC4(pdev->dev.parent);
	struct da9055_pdata *pdata = FUNC5(da9055->dev);
	int ret, irq;

	regulator = FUNC6(&pdev->dev, sizeof(struct da9055_regulator),
				 GFP_KERNEL);
	if (!regulator)
		return -ENOMEM;

	regulator->info = FUNC9(pdev->id);
	if (regulator->info == NULL) {
		FUNC3(&pdev->dev, "invalid regulator ID specified\n");
		return -EINVAL;
	}

	regulator->da9055 = da9055;
	config.dev = da9055->dev;
	config.driver_data = regulator;
	config.regmap = da9055->regmap;

	if (pdata)
		config.init_data = pdata->regulators[pdev->id];

	ret = FUNC2(regulator, &config, pdata, pdev->id);
	if (ret < 0)
		return ret;

	regulator->rdev = FUNC7(&pdev->dev,
						  &regulator->info->reg_desc,
						  &config);
	if (FUNC0(regulator->rdev)) {
		FUNC3(&pdev->dev, "Failed to register regulator %s\n",
			regulator->info->reg_desc.name);
		return FUNC1(regulator->rdev);
	}

	/* Only LDO 5 and 6 has got the over current interrupt */
	if (pdev->id == DA9055_ID_LDO5 || pdev->id ==  DA9055_ID_LDO6) {
		irq = FUNC10(pdev, "REGULATOR");
		if (irq < 0)
			return irq;

		ret = FUNC8(&pdev->dev, irq, NULL,
						da9055_ldo5_6_oc_irq,
						IRQF_TRIGGER_HIGH |
						IRQF_ONESHOT |
						IRQF_PROBE_SHARED,
						pdev->name, regulator);
		if (ret != 0) {
			if (ret != -EBUSY) {
				FUNC3(&pdev->dev,
				"Failed to request Regulator IRQ %d: %d\n",
				irq, ret);
				return ret;
			}
		}
	}

	FUNC11(pdev, regulator);

	return 0;
}