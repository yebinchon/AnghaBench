#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regulator_config {scalar_t__ of_node; struct fixed_voltage_data* driver_data; int /*<<< orphan*/  init_data; struct device* dev; struct fixed_voltage_config* ena_gpiod; } ;
struct device {scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_3__ {int n_voltages; scalar_t__ fixed_uV; int /*<<< orphan*/ * name; void* supply_name; int /*<<< orphan*/  enable_time; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; int /*<<< orphan*/  type; } ;
struct fixed_voltage_data {TYPE_1__ desc; struct fixed_voltage_config* dev; struct fixed_voltage_config* enable_clock; } ;
struct fixed_voltage_config {int /*<<< orphan*/  init_data; scalar_t__ enabled_at_boot; scalar_t__ microvolts; scalar_t__ input_supply; int /*<<< orphan*/  startup_delay; scalar_t__ supply_name; } ;
struct fixed_dev_type {scalar_t__ has_enable_clock; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIOD_FLAGS_BIT_NONEXCLUSIVE ; 
 int GPIOD_OUT_HIGH ; 
 int GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct fixed_voltage_config*) ; 
 int FUNC1 (struct fixed_voltage_config*) ; 
 int /*<<< orphan*/  REGULATOR_VOLTAGE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct fixed_voltage_config* FUNC4 (struct device*) ; 
 struct fixed_voltage_config* FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 void* FUNC6 (struct device*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct fixed_voltage_data* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct fixed_voltage_config* FUNC8 (struct device*,TYPE_1__*,struct regulator_config*) ; 
 int /*<<< orphan*/  fixed_voltage_clkenabled_ops ; 
 int /*<<< orphan*/  fixed_voltage_ops ; 
 struct fixed_voltage_config* FUNC9 (struct device*,int /*<<< orphan*/ *,int) ; 
 struct fixed_dev_type* FUNC10 (struct device*) ; 
 struct fixed_voltage_config* FUNC11 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct fixed_voltage_data*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct fixed_voltage_config *config;
	struct fixed_voltage_data *drvdata;
	const struct fixed_dev_type *drvtype = FUNC10(dev);
	struct regulator_config cfg = { };
	enum gpiod_flags gflags;
	int ret;

	drvdata = FUNC7(&pdev->dev, sizeof(struct fixed_voltage_data),
			       GFP_KERNEL);
	if (!drvdata)
		return -ENOMEM;

	if (pdev->dev.of_node) {
		config = FUNC11(&pdev->dev,
						     &drvdata->desc);
		if (FUNC0(config))
			return FUNC1(config);
	} else {
		config = FUNC4(&pdev->dev);
	}

	if (!config)
		return -ENOMEM;

	drvdata->desc.name = FUNC6(&pdev->dev,
					  config->supply_name,
					  GFP_KERNEL);
	if (drvdata->desc.name == NULL) {
		FUNC3(&pdev->dev, "Failed to allocate supply name\n");
		return -ENOMEM;
	}
	drvdata->desc.type = REGULATOR_VOLTAGE;
	drvdata->desc.owner = THIS_MODULE;

	if (drvtype && drvtype->has_enable_clock) {
		drvdata->desc.ops = &fixed_voltage_clkenabled_ops;

		drvdata->enable_clock = FUNC5(dev, NULL);
		if (FUNC0(drvdata->enable_clock)) {
			FUNC3(dev, "Cant get enable-clock from devicetree\n");
			return -ENOENT;
		}
	} else {
		drvdata->desc.ops = &fixed_voltage_ops;
	}

	drvdata->desc.enable_time = config->startup_delay;

	if (config->input_supply) {
		drvdata->desc.supply_name = FUNC6(&pdev->dev,
					    config->input_supply,
					    GFP_KERNEL);
		if (!drvdata->desc.supply_name) {
			FUNC3(&pdev->dev,
				"Failed to allocate input supply\n");
			return -ENOMEM;
		}
	}

	if (config->microvolts)
		drvdata->desc.n_voltages = 1;

	drvdata->desc.fixed_uV = config->microvolts;

	/*
	 * The signal will be inverted by the GPIO core if flagged so in the
	 * decriptor.
	 */
	if (config->enabled_at_boot)
		gflags = GPIOD_OUT_HIGH;
	else
		gflags = GPIOD_OUT_LOW;

	/*
	 * Some fixed regulators share the enable line between two
	 * regulators which makes it necessary to get a handle on the
	 * same descriptor for two different consumers. This will get
	 * the GPIO descriptor, but only the first call will initialize
	 * it so any flags such as inversion or open drain will only
	 * be set up by the first caller and assumed identical on the
	 * next caller.
	 *
	 * FIXME: find a better way to deal with this.
	 */
	gflags |= GPIOD_FLAGS_BIT_NONEXCLUSIVE;

	/*
	 * Do not use devm* here: the regulator core takes over the
	 * lifecycle management of the GPIO descriptor.
	 */
	cfg.ena_gpiod = FUNC9(&pdev->dev, NULL, gflags);
	if (FUNC0(cfg.ena_gpiod))
		return FUNC1(cfg.ena_gpiod);

	cfg.dev = &pdev->dev;
	cfg.init_data = config->init_data;
	cfg.driver_data = drvdata;
	cfg.of_node = pdev->dev.of_node;

	drvdata->dev = FUNC8(&pdev->dev, &drvdata->desc,
					       &cfg);
	if (FUNC0(drvdata->dev)) {
		ret = FUNC1(drvdata->dev);
		FUNC3(&pdev->dev, "Failed to register regulator: %d\n", ret);
		return ret;
	}

	FUNC12(pdev, drvdata);

	FUNC2(&pdev->dev, "%s supplying %duV\n", drvdata->desc.name,
		drvdata->desc.fixed_uV);

	return 0;
}