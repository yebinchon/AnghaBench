#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regulator_desc {int dummy; } ;
struct regulator_config {int /*<<< orphan*/  of_node; TYPE_2__* init_data; int /*<<< orphan*/  ena_gpiod; int /*<<< orphan*/  regmap; struct arizona_ldo1* driver_data; struct device* dev; } ;
struct TYPE_7__ {struct device* parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device {int dummy; } ;
struct arizona_ldo1_pdata {TYPE_2__* init_data; } ;
struct TYPE_6__ {scalar_t__ num_consumer_supplies; TYPE_1__* consumer_supplies; } ;
struct TYPE_5__ {char* supply; int /*<<< orphan*/  dev_name; } ;
struct arizona_ldo1 {int /*<<< orphan*/  regulator; TYPE_2__ init_data; int /*<<< orphan*/  ena_gpiod; int /*<<< orphan*/  regmap; TYPE_1__ supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int GPIOD_FLAGS_BIT_NONEXCLUSIVE ; 
 int GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct arizona_ldo1_pdata*,struct regulator_config*,struct regulator_desc const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct regulator_desc const*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct arizona_ldo1*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev,
				    struct arizona_ldo1 *ldo1,
				    const struct regulator_desc *desc,
				    struct arizona_ldo1_pdata *pdata,
				    bool *external_dcvdd)
{
	struct device *parent_dev = pdev->dev.parent;
	struct regulator_config config = { };
	int ret;

	*external_dcvdd = false;

	ldo1->supply.supply = "DCVDD";
	ldo1->init_data.consumer_supplies = &ldo1->supply;
	ldo1->supply.dev_name = FUNC6(parent_dev);

	config.dev = parent_dev;
	config.driver_data = ldo1;
	config.regmap = ldo1->regmap;

	if (FUNC0(CONFIG_OF)) {
		if (!FUNC5(parent_dev)) {
			ret = FUNC3(pdata,
							&config, desc,
							external_dcvdd);
			if (ret < 0)
				return ret;
		}
	}

	/* We assume that high output = regulator off
	 * Don't use devm, since we need to get against the parent device
	 * so clean up would happen at the wrong time
	 */
	config.ena_gpiod = FUNC8(parent_dev, "wlf,ldoena",
				GPIOD_OUT_LOW | GPIOD_FLAGS_BIT_NONEXCLUSIVE);
	if (FUNC1(config.ena_gpiod))
		return FUNC2(config.ena_gpiod);

	ldo1->ena_gpiod = config.ena_gpiod;

	if (pdata->init_data)
		config.init_data = pdata->init_data;
	else
		config.init_data = &ldo1->init_data;

	/*
	 * LDO1 can only be used to supply DCVDD so if it has no
	 * consumers then DCVDD is supplied externally.
	 */
	if (config.init_data->num_consumer_supplies == 0)
		*external_dcvdd = true;

	ldo1->regulator = FUNC7(&pdev->dev, desc, &config);

	FUNC9(config.of_node);

	if (FUNC1(ldo1->regulator)) {
		ret = FUNC2(ldo1->regulator);
		FUNC4(&pdev->dev, "Failed to register LDO1 supply: %d\n",
			ret);
		return ret;
	}

	FUNC10(pdev, ldo1);

	return 0;
}