#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regulator_dev {int dummy; } ;
struct regulator_config {int /*<<< orphan*/ * dev; } ;
typedef  struct regulator_dev regmap ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct regulator_dev*) ; 
 int FUNC2 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct regulator_dev* FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct regulator_dev* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,struct regulator_config*) ; 
 int /*<<< orphan*/  pg86x_regmap ; 
 TYPE_1__* pg86x_regulators ; 

__attribute__((used)) static int FUNC6(struct i2c_client *i2c)
{
	int id, ret;
	struct regulator_config config = {.dev = &i2c->dev};
	struct regmap *regmap = FUNC4(i2c, &pg86x_regmap);

	if (FUNC1(regmap)) {
		ret = FUNC2(regmap);
		FUNC3(&i2c->dev, "regmap init failed: %d\n", ret);
		return ret;
	}

	for (id = 0; id < FUNC0(pg86x_regulators); id++) {
		struct regulator_dev *rdev;
		rdev = FUNC5(&i2c->dev,
					       &pg86x_regulators[id],
					       &config);
		if (FUNC1(rdev)) {
			ret = FUNC2(rdev);
			FUNC3(&i2c->dev, "failed to register %s: %d\n",
				pg86x_regulators[id].name, ret);
			return ret;
		}
	}
	return 0;
}