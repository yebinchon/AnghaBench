#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct regulator_config {struct device_node* of_node; struct fan53555_device_info* driver_data; struct regmap* regmap; TYPE_2__* init_data; TYPE_3__* dev; } ;
struct regmap {int dummy; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct fan53555_platform_data {size_t slew_rate; TYPE_2__* regulator; } ;
struct fan53555_device_info {unsigned long vendor; unsigned int chip_id; unsigned int chip_rev; TYPE_2__* regulator; TYPE_3__* dev; int /*<<< orphan*/  desc; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {scalar_t__ ramp_delay; } ;
struct TYPE_10__ {TYPE_1__ constraints; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 
 unsigned int DIE_ID ; 
 unsigned int DIE_REV ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FAN53555_ID1 ; 
 int /*<<< orphan*/  FAN53555_ID2 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 struct fan53555_platform_data* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,unsigned int,unsigned int) ; 
 struct fan53555_device_info* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct fan53555_device_info*,struct fan53555_platform_data*) ; 
 struct fan53555_platform_data* FUNC9 (TYPE_3__*,struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fan53555_regmap_config ; 
 int FUNC10 (struct fan53555_device_info*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,struct fan53555_device_info*) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 
 int FUNC13 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__* slew_rates ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct device_node *np = client->dev.of_node;
	struct fan53555_device_info *di;
	struct fan53555_platform_data *pdata;
	struct regulator_config config = { };
	struct regmap *regmap;
	unsigned int val;
	int ret;

	di = FUNC6(&client->dev, sizeof(struct fan53555_device_info),
					GFP_KERNEL);
	if (!di)
		return -ENOMEM;

	pdata = FUNC4(&client->dev);
	if (!pdata)
		pdata = FUNC9(&client->dev, np, &di->desc);

	if (!pdata || !pdata->regulator) {
		FUNC3(&client->dev, "Platform data not found!\n");
		return -ENODEV;
	}

	di->regulator = pdata->regulator;
	if (client->dev.of_node) {
		di->vendor =
			(unsigned long)FUNC12(&client->dev);
	} else {
		/* if no ramp constraint set, get the pdata ramp_delay */
		if (!di->regulator->constraints.ramp_delay) {
			if (pdata->slew_rate >= FUNC0(slew_rates)) {
				FUNC3(&client->dev, "Invalid slew_rate\n");
				return -EINVAL;
			}

			di->regulator->constraints.ramp_delay
					= slew_rates[pdata->slew_rate];
		}

		di->vendor = id->driver_data;
	}

	regmap = FUNC7(client, &fan53555_regmap_config);
	if (FUNC1(regmap)) {
		FUNC3(&client->dev, "Failed to allocate regmap!\n");
		return FUNC2(regmap);
	}
	di->dev = &client->dev;
	FUNC11(client, di);
	/* Get chip ID */
	ret = FUNC13(regmap, FAN53555_ID1, &val);
	if (ret < 0) {
		FUNC3(&client->dev, "Failed to get chip ID!\n");
		return ret;
	}
	di->chip_id = val & DIE_ID;
	/* Get chip revision */
	ret = FUNC13(regmap, FAN53555_ID2, &val);
	if (ret < 0) {
		FUNC3(&client->dev, "Failed to get chip Rev!\n");
		return ret;
	}
	di->chip_rev = val & DIE_REV;
	FUNC5(&client->dev, "FAN53555 Option[%d] Rev[%d] Detected!\n",
				di->chip_id, di->chip_rev);
	/* Device init */
	ret = FUNC8(di, pdata);
	if (ret < 0) {
		FUNC3(&client->dev, "Failed to setup device!\n");
		return ret;
	}
	/* Register regulator */
	config.dev = di->dev;
	config.init_data = di->regulator;
	config.regmap = regmap;
	config.driver_data = di;
	config.of_node = np;

	ret = FUNC10(di, &config);
	if (ret < 0)
		FUNC3(&client->dev, "Failed to register regulator!\n");
	return ret;

}