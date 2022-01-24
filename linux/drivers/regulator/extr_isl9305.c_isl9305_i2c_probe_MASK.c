#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/ * init_data; TYPE_2__* dev; } ;
typedef  struct regulator_dev regmap ;
struct isl9305_pdata {int /*<<< orphan*/ ** init_data; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {struct isl9305_pdata* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int,...) ; 
 struct regulator_dev* FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct regulator_dev* FUNC5 (TYPE_2__*,TYPE_1__*,struct regulator_config*) ; 
 int /*<<< orphan*/  isl9305_regmap ; 
 TYPE_1__* isl9305_regulators ; 

__attribute__((used)) static int FUNC6(struct i2c_client *i2c,
			     const struct i2c_device_id *id)
{
	struct regulator_config config = { };
	struct isl9305_pdata *pdata = i2c->dev.platform_data;
	struct regulator_dev *rdev;
	struct regmap *regmap;
	int i, ret;

	regmap = FUNC4(i2c, &isl9305_regmap);
	if (FUNC1(regmap)) {
		ret = FUNC2(regmap);
		FUNC3(&i2c->dev, "Failed to create regmap: %d\n", ret);
		return ret;
	}

	config.dev = &i2c->dev;

	for (i = 0; i < FUNC0(isl9305_regulators); i++) {
		if (pdata)
			config.init_data = pdata->init_data[i];
		else
			config.init_data = NULL;

		rdev = FUNC5(&i2c->dev,
					       &isl9305_regulators[i],
					       &config);
		if (FUNC1(rdev)) {
			ret = FUNC2(rdev);
			FUNC3(&i2c->dev, "Failed to register %s: %d\n",
				isl9305_regulators[i].name, ret);
			return ret;
		}
	}

	return 0;
}