#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct regulator_config {struct max1586_data* driver_data; scalar_t__ init_data; TYPE_2__* dev; } ;
struct of_device_id {int dummy; } ;
struct max1586_platform_data {int v3_gain; int num_subdevs; TYPE_1__* subdevs; } ;
struct max1586_data {int min_uV; int max_uV; int v3_curr_sel; scalar_t__ v6_curr_sel; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_12__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct TYPE_13__ {int min_uV; int uV_step; int name; } ;
struct TYPE_11__ {int id; scalar_t__ platform_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int MAX1586_V3 ; 
 int MAX1586_V3_MAX_UV ; 
 int MAX1586_V3_MAX_VSEL ; 
 int MAX1586_V3_MIN_UV ; 
 int MAX1586_V6 ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 
 struct max1586_platform_data* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 struct max1586_data* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC6 (TYPE_2__*,TYPE_4__*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct max1586_data*) ; 
 int /*<<< orphan*/  max1586_of_match ; 
 TYPE_4__* max1586_reg ; 
 int FUNC8 (TYPE_2__*,struct max1586_platform_data*) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
					const struct i2c_device_id *i2c_id)
{
	struct max1586_platform_data *pdata, pdata_of;
	struct regulator_config config = { };
	struct max1586_data *max1586;
	int i, id, ret;
	const struct of_device_id *match;

	pdata = FUNC3(&client->dev);
	if (client->dev.of_node && !pdata) {
		match = FUNC9(FUNC10(max1586_of_match),
					&client->dev);
		if (!match) {
			FUNC2(&client->dev, "Error: No device match found\n");
			return -ENODEV;
		}
		ret = FUNC8(&client->dev, &pdata_of);
		if (ret < 0)
			return ret;
		pdata = &pdata_of;
	}

	max1586 = FUNC5(&client->dev, sizeof(struct max1586_data),
			GFP_KERNEL);
	if (!max1586)
		return -ENOMEM;

	max1586->client = client;

	if (!pdata->v3_gain)
		return -EINVAL;

	max1586->min_uV = MAX1586_V3_MIN_UV / 1000 * pdata->v3_gain / 1000;
	max1586->max_uV = MAX1586_V3_MAX_UV / 1000 * pdata->v3_gain / 1000;

	/* Set curr_sel to default voltage on power-up */
	max1586->v3_curr_sel = 24; /* 1.3V */
	max1586->v6_curr_sel = 0;

	for (i = 0; i < pdata->num_subdevs && i <= MAX1586_V6; i++) {
		struct regulator_dev *rdev;

		id = pdata->subdevs[i].id;
		if (!pdata->subdevs[i].platform_data)
			continue;
		if (id < MAX1586_V3 || id > MAX1586_V6) {
			FUNC2(&client->dev, "invalid regulator id %d\n", id);
			return -EINVAL;
		}

		if (id == MAX1586_V3) {
			max1586_reg[id].min_uV = max1586->min_uV;
			max1586_reg[id].uV_step =
					(max1586->max_uV - max1586->min_uV) /
					MAX1586_V3_MAX_VSEL;
		}

		config.dev = &client->dev;
		config.init_data = pdata->subdevs[i].platform_data;
		config.driver_data = max1586;

		rdev = FUNC6(&client->dev,
						  &max1586_reg[id], &config);
		if (FUNC0(rdev)) {
			FUNC2(&client->dev, "failed to register %s\n",
				max1586_reg[id].name);
			return FUNC1(rdev);
		}
	}

	FUNC7(client, max1586);
	FUNC4(&client->dev, "Maxim 1586 regulator driver loaded\n");
	return 0;
}