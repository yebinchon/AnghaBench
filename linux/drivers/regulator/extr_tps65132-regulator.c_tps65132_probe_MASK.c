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
struct tps65132_regulator {struct device* dev; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {struct tps65132_regulator* driver_data; struct device* dev; struct regulator_dev* regmap; } ;
typedef  struct regulator_dev regmap ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int FUNC1 (struct regulator_dev*) ; 
 int TPS65132_MAX_REGULATORS ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,...) ; 
 struct tps65132_regulator* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct regulator_dev* FUNC5 (struct device*,TYPE_1__*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct tps65132_regulator*) ; 
 int /*<<< orphan*/  tps65132_regmap_config ; 
 TYPE_1__* tps_regs_desc ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			  const struct i2c_device_id *client_id)
{
	struct device *dev = &client->dev;
	struct tps65132_regulator *tps;
	struct regulator_dev *rdev;
	struct regmap *rmap;
	struct regulator_config config = { };
	int id;
	int ret;

	tps = FUNC3(dev, sizeof(*tps), GFP_KERNEL);
	if (!tps)
		return -ENOMEM;

	rmap = FUNC4(client, &tps65132_regmap_config);
	if (FUNC0(rmap)) {
		ret = FUNC1(rmap);
		FUNC2(dev, "regmap init failed: %d\n", ret);
		return ret;
	}

	FUNC6(client, tps);
	tps->dev = dev;

	for (id = 0; id < TPS65132_MAX_REGULATORS; ++id) {
		config.regmap = rmap;
		config.dev = dev;
		config.driver_data = tps;

		rdev = FUNC5(dev, &tps_regs_desc[id],
					       &config);
		if (FUNC0(rdev)) {
			ret = FUNC1(rdev);
			FUNC2(dev, "regulator %s register failed: %d\n",
				tps_regs_desc[id].name, ret);
			return ret;
		}
	}
	return 0;
}