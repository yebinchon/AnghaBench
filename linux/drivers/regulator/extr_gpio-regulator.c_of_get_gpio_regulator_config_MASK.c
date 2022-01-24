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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct regulator_desc {int dummy; } ;
struct gpio_regulator_state {int dummy; } ;
struct gpio_regulator_config {int enabled_at_boot; int ngpios; int nr_states; void* type; TYPE_3__* states; void** gflags; int /*<<< orphan*/  startup_delay; TYPE_2__* init_data; int /*<<< orphan*/  supply_name; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef  enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;
struct TYPE_6__ {scalar_t__ gpios; scalar_t__ value; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_1__ constraints; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct gpio_regulator_config* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* GPIOD_OUT_HIGH ; 
 void* GPIOD_OUT_LOW ; 
 void* REGULATOR_CURRENT ; 
 void* REGULATOR_VOLTAGE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const*) ; 
 TYPE_3__* FUNC3 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (struct device*,struct device_node*,struct regulator_desc const*) ; 
 int FUNC7 (struct device_node*,char*) ; 
 scalar_t__ FUNC8 (struct device_node*,char*) ; 
 int FUNC9 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct device_node*,char*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int) ; 

__attribute__((used)) static struct gpio_regulator_config *
FUNC13(struct device *dev, struct device_node *np,
			     const struct regulator_desc *desc)
{
	struct gpio_regulator_config *config;
	const char *regtype;
	int proplen, i;
	int ngpios;
	int ret;

	config = FUNC4(dev,
			sizeof(struct gpio_regulator_config),
			GFP_KERNEL);
	if (!config)
		return FUNC0(-ENOMEM);

	config->init_data = FUNC6(dev, np, desc);
	if (!config->init_data)
		return FUNC0(-EINVAL);

	config->supply_name = config->init_data->constraints.name;

	if (FUNC8(np, "enable-at-boot"))
		config->enabled_at_boot = true;

	FUNC10(np, "startup-delay-us", &config->startup_delay);

	/* Fetch GPIO init levels */
	ngpios = FUNC5(dev, NULL);
	if (ngpios > 0) {
		config->gflags = FUNC4(dev,
					      sizeof(enum gpiod_flags)
					      * ngpios,
					      GFP_KERNEL);
		if (!config->gflags)
			return FUNC0(-ENOMEM);

		for (i = 0; i < ngpios; i++) {
			u32 val;

			ret = FUNC11(np, "gpios-states", i,
							 &val);

			/* Default to high per specification */
			if (ret)
				config->gflags[i] = GPIOD_OUT_HIGH;
			else
				config->gflags[i] =
					val ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW;
		}
	}
	config->ngpios = ngpios;

	/* Fetch states. */
	proplen = FUNC7(np, "states");
	if (proplen < 0) {
		FUNC1(dev, "No 'states' property found\n");
		return FUNC0(-EINVAL);
	}

	config->states = FUNC3(dev,
				proplen / 2,
				sizeof(struct gpio_regulator_state),
				GFP_KERNEL);
	if (!config->states)
		return FUNC0(-ENOMEM);

	for (i = 0; i < proplen / 2; i++) {
		FUNC11(np, "states", i * 2,
					   &config->states[i].value);
		FUNC11(np, "states", i * 2 + 1,
					   &config->states[i].gpios);
	}
	config->nr_states = i;

	config->type = REGULATOR_VOLTAGE;
	ret = FUNC9(np, "regulator-type", &regtype);
	if (ret >= 0) {
		if (!FUNC12("voltage", regtype, 7))
			config->type = REGULATOR_VOLTAGE;
		else if (!FUNC12("current", regtype, 7))
			config->type = REGULATOR_CURRENT;
		else
			FUNC2(dev, "Unknown regulator-type '%s'\n",
				 regtype);
	}

	return config;
}