#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct power_supply_config {struct axp20x_ac_power* drv_data; int /*<<< orphan*/  of_node; } ;
struct TYPE_8__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct axp_data {int /*<<< orphan*/  power_desc; scalar_t__ acin_adc; } ;
struct axp20x_dev {int /*<<< orphan*/  regmap_irqc; } ;
struct axp20x_ac_power {void* supply; int /*<<< orphan*/  regmap; void* acin_i; void* acin_v; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRVNAME ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  axp20x_ac_power_irq ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 struct axp20x_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char const* const,int) ; 
 void* FUNC6 (TYPE_1__*,char*) ; 
 struct axp20x_ac_power* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,struct power_supply_config*) ; 
 int FUNC9 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct axp20x_ac_power*) ; 
 struct axp_data* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct platform_device*,char const* const) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct axp20x_ac_power*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct axp20x_dev *axp20x = FUNC3(pdev->dev.parent);
	struct power_supply_config psy_cfg = {};
	struct axp20x_ac_power *power;
	const struct axp_data *axp_data;
	static const char * const irq_names[] = { "ACIN_PLUGIN", "ACIN_REMOVAL",
		NULL };
	int i, irq, ret;

	if (!FUNC11(pdev->dev.of_node))
		return -ENODEV;

	if (!axp20x) {
		FUNC2(&pdev->dev, "Parent drvdata not set\n");
		return -EINVAL;
	}

	power = FUNC7(&pdev->dev, sizeof(*power), GFP_KERNEL);
	if (!power)
		return -ENOMEM;

	axp_data = FUNC10(&pdev->dev);

	if (axp_data->acin_adc) {
		power->acin_v = FUNC6(&pdev->dev, "acin_v");
		if (FUNC0(power->acin_v)) {
			if (FUNC1(power->acin_v) == -ENODEV)
				return -EPROBE_DEFER;
			return FUNC1(power->acin_v);
		}

		power->acin_i = FUNC6(&pdev->dev, "acin_i");
		if (FUNC0(power->acin_i)) {
			if (FUNC1(power->acin_i) == -ENODEV)
				return -EPROBE_DEFER;
			return FUNC1(power->acin_i);
		}
	}

	power->regmap = FUNC4(pdev->dev.parent, NULL);

	FUNC13(pdev, power);

	psy_cfg.of_node = pdev->dev.of_node;
	psy_cfg.drv_data = power;

	power->supply = FUNC8(&pdev->dev,
						   axp_data->power_desc,
						   &psy_cfg);
	if (FUNC0(power->supply))
		return FUNC1(power->supply);

	/* Request irqs after registering, as irqs may trigger immediately */
	for (i = 0; irq_names[i]; i++) {
		irq = FUNC12(pdev, irq_names[i]);
		if (irq < 0) {
			FUNC5(&pdev->dev, "No IRQ for %s: %d\n",
				 irq_names[i], irq);
			continue;
		}
		irq = FUNC14(axp20x->regmap_irqc, irq);
		ret = FUNC9(&pdev->dev, irq,
						   axp20x_ac_power_irq, 0,
						   DRVNAME, power);
		if (ret < 0)
			FUNC5(&pdev->dev, "Error requesting %s IRQ: %d\n",
				 irq_names[i], ret);
	}

	return 0;
}