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
struct regulator_dev {int ngpios; int* gflags; int nr_states; int type; scalar_t__ enabled_at_boot; int /*<<< orphan*/  init_data; int /*<<< orphan*/  startup_delay; int /*<<< orphan*/  states; int /*<<< orphan*/  supply_name; } ;
struct regulator_config {struct regulator_dev* ena_gpiod; struct device_node* of_node; struct gpio_regulator_data* driver_data; int /*<<< orphan*/  init_data; struct device* dev; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct gpio_regulator_state {int dummy; } ;
struct TYPE_3__ {int type; int n_voltages; int /*<<< orphan*/ * ops; int /*<<< orphan*/  enable_time; int /*<<< orphan*/  owner; int /*<<< orphan*/ * name; } ;
struct gpio_regulator_data {int nr_gpios; int nr_states; int state; TYPE_1__ desc; int /*<<< orphan*/ * states; struct regulator_dev** gpiods; } ;
struct gpio_regulator_config {int ngpios; int* gflags; int nr_states; int type; scalar_t__ enabled_at_boot; int /*<<< orphan*/  init_data; int /*<<< orphan*/  startup_delay; int /*<<< orphan*/  states; int /*<<< orphan*/  supply_name; } ;
struct gpio_desc {int dummy; } ;
struct device_node {int dummy; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GPIOD_FLAGS_BIT_NONEXCLUSIVE ; 
 int GPIOD_OUT_HIGH ; 
 int GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
#define  REGULATOR_CURRENT 129 
#define  REGULATOR_VOLTAGE 128 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct regulator_dev* FUNC3 (struct device*) ; 
 struct regulator_dev* FUNC4 (struct device*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC8 (struct device*,TYPE_1__*,struct regulator_config*) ; 
 int /*<<< orphan*/  gpio_regulator_current_ops ; 
 int /*<<< orphan*/  gpio_regulator_voltage_ops ; 
 struct regulator_dev* FUNC9 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct regulator_dev*,int /*<<< orphan*/ *) ; 
 struct regulator_dev* FUNC11 (struct device*,struct device_node*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct gpio_regulator_data*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct gpio_regulator_config *config = FUNC3(dev);
	struct device_node *np = dev->of_node;
	struct gpio_regulator_data *drvdata;
	struct regulator_config cfg = { };
	struct regulator_dev *rdev;
	enum gpiod_flags gflags;
	int ptr, ret, state, i;

	drvdata = FUNC7(dev, sizeof(struct gpio_regulator_data),
			       GFP_KERNEL);
	if (drvdata == NULL)
		return -ENOMEM;

	if (np) {
		config = FUNC11(dev, np,
						      &drvdata->desc);
		if (FUNC0(config))
			return FUNC1(config);
	}

	drvdata->desc.name = FUNC6(dev, config->supply_name, GFP_KERNEL);
	if (drvdata->desc.name == NULL) {
		FUNC2(dev, "Failed to allocate supply name\n");
		return -ENOMEM;
	}

	drvdata->gpiods = FUNC7(dev, sizeof(struct gpio_desc *),
				       GFP_KERNEL);
	if (!drvdata->gpiods)
		return -ENOMEM;
	for (i = 0; i < config->ngpios; i++) {
		drvdata->gpiods[i] = FUNC4(dev,
							  NULL,
							  i,
							  config->gflags[i]);
		if (FUNC0(drvdata->gpiods[i]))
			return FUNC1(drvdata->gpiods[i]);
		/* This is good to know */
		FUNC10(drvdata->gpiods[i], drvdata->desc.name);
	}
	drvdata->nr_gpios = config->ngpios;

	drvdata->states = FUNC5(dev,
				       config->states,
				       config->nr_states *
				       sizeof(struct gpio_regulator_state),
				       GFP_KERNEL);
	if (drvdata->states == NULL) {
		FUNC2(dev, "Failed to allocate state data\n");
		return -ENOMEM;
	}
	drvdata->nr_states = config->nr_states;

	drvdata->desc.owner = THIS_MODULE;
	drvdata->desc.enable_time = config->startup_delay;

	/* handle regulator type*/
	switch (config->type) {
	case REGULATOR_VOLTAGE:
		drvdata->desc.type = REGULATOR_VOLTAGE;
		drvdata->desc.ops = &gpio_regulator_voltage_ops;
		drvdata->desc.n_voltages = config->nr_states;
		break;
	case REGULATOR_CURRENT:
		drvdata->desc.type = REGULATOR_CURRENT;
		drvdata->desc.ops = &gpio_regulator_current_ops;
		break;
	default:
		FUNC2(dev, "No regulator type set\n");
		return -EINVAL;
	}

	/* build initial state from gpio init data. */
	state = 0;
	for (ptr = 0; ptr < drvdata->nr_gpios; ptr++) {
		if (config->gflags[ptr] == GPIOD_OUT_HIGH)
			state |= (1 << ptr);
	}
	drvdata->state = state;

	cfg.dev = dev;
	cfg.init_data = config->init_data;
	cfg.driver_data = drvdata;
	cfg.of_node = np;

	/*
	 * The signal will be inverted by the GPIO core if flagged so in the
	 * decriptor.
	 */
	if (config->enabled_at_boot)
		gflags = GPIOD_OUT_HIGH | GPIOD_FLAGS_BIT_NONEXCLUSIVE;
	else
		gflags = GPIOD_OUT_LOW | GPIOD_FLAGS_BIT_NONEXCLUSIVE;

	cfg.ena_gpiod = FUNC9(dev, "enable", gflags);
	if (FUNC0(cfg.ena_gpiod))
		return FUNC1(cfg.ena_gpiod);

	rdev = FUNC8(dev, &drvdata->desc, &cfg);
	if (FUNC0(rdev)) {
		ret = FUNC1(rdev);
		FUNC2(dev, "Failed to register regulator: %d\n", ret);
		return ret;
	}

	FUNC12(pdev, drvdata);

	return 0;
}