#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regulator_desc {int /*<<< orphan*/  enable_reg; } ;
struct regulator_config {int /*<<< orphan*/  of_node; TYPE_2__* init_data; int /*<<< orphan*/  regmap; struct arizona_micsupp* driver_data; int /*<<< orphan*/  dev; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct arizona_micsupp_pdata {TYPE_2__* init_data; } ;
struct TYPE_4__ {TYPE_1__* consumer_supplies; } ;
struct TYPE_3__ {char* supply; int /*<<< orphan*/  dev_name; } ;
struct arizona_micsupp {int /*<<< orphan*/  dev; int /*<<< orphan*/  regulator; int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  regmap; TYPE_2__ init_data; TYPE_1__ supply; int /*<<< orphan*/  check_cp_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARIZONA_CPMIC_BYPASS ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arizona_micsupp_check_cp ; 
 int FUNC4 (struct arizona_micsupp_pdata*,struct regulator_config*,struct regulator_desc const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct regulator_desc const*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct arizona_micsupp*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev,
				       struct arizona_micsupp *micsupp,
				       const struct regulator_desc *desc,
				       struct arizona_micsupp_pdata *pdata)
{
	struct regulator_config config = { };
	int ret;

	FUNC0(&micsupp->check_cp_work, arizona_micsupp_check_cp);

	micsupp->init_data.consumer_supplies = &micsupp->supply;
	micsupp->supply.supply = "MICVDD";
	micsupp->supply.dev_name = FUNC7(micsupp->dev);
	micsupp->enable_reg = desc->enable_reg;

	config.dev = micsupp->dev;
	config.driver_data = micsupp;
	config.regmap = micsupp->regmap;

	if (FUNC1(CONFIG_OF)) {
		if (!FUNC6(micsupp->dev)) {
			ret = FUNC4(pdata, &config,
							   desc);
			if (ret < 0)
				return ret;
		}
	}

	if (pdata->init_data)
		config.init_data = pdata->init_data;
	else
		config.init_data = &micsupp->init_data;

	/* Default to regulated mode */
	FUNC11(micsupp->regmap, micsupp->enable_reg,
			   ARIZONA_CPMIC_BYPASS, 0);

	micsupp->regulator = FUNC8(&pdev->dev,
						     desc,
						     &config);

	FUNC9(config.of_node);

	if (FUNC2(micsupp->regulator)) {
		ret = FUNC3(micsupp->regulator);
		FUNC5(micsupp->dev, "Failed to register mic supply: %d\n",
			ret);
		return ret;
	}

	FUNC10(pdev, micsupp);

	return 0;
}