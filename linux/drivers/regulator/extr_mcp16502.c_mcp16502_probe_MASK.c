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
struct regulator_dev {int dummy; } ;
struct regulator_config {struct mcp16502* driver_data; struct regulator_dev* regmap; struct device* dev; } ;
typedef  struct regulator_dev regmap ;
struct mcp16502 {struct regulator_dev* lpm; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (struct regulator_dev*) ; 
 int /*<<< orphan*/  MCP16502_OPMODE_ACTIVE ; 
 int NUM_REGULATORS ; 
 int FUNC1 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,...) ; 
 struct regulator_dev* FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct mcp16502* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 struct regulator_dev* FUNC6 (struct device*,TYPE_1__*,struct regulator_config*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct mcp16502*) ; 
 TYPE_1__* mcp16502_desc ; 
 int /*<<< orphan*/  FUNC8 (struct mcp16502*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcp16502_regmap_config ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct regulator_config config = { };
	struct regulator_dev *rdev;
	struct device *dev;
	struct mcp16502 *mcp;
	struct regmap *rmap;
	int i, ret;

	dev = &client->dev;
	config.dev = dev;

	mcp = FUNC4(dev, sizeof(*mcp), GFP_KERNEL);
	if (!mcp)
		return -ENOMEM;

	rmap = FUNC5(client, &mcp16502_regmap_config);
	if (FUNC0(rmap)) {
		ret = FUNC1(rmap);
		FUNC2(dev, "regmap init failed: %d\n", ret);
		return ret;
	}

	FUNC7(client, mcp);
	config.regmap = rmap;
	config.driver_data = mcp;

	mcp->lpm = FUNC3(dev, "lpm", GPIOD_OUT_LOW);
	if (FUNC0(mcp->lpm)) {
		FUNC2(dev, "failed to get lpm pin: %ld\n", FUNC1(mcp->lpm));
		return FUNC1(mcp->lpm);
	}

	for (i = 0; i < NUM_REGULATORS; i++) {
		rdev = FUNC6(dev, &mcp16502_desc[i], &config);
		if (FUNC0(rdev)) {
			FUNC2(dev,
				"failed to register %s regulator %ld\n",
				mcp16502_desc[i].name, FUNC1(rdev));
			return FUNC1(rdev);
		}
	}

	FUNC8(mcp, MCP16502_OPMODE_ACTIVE);

	return 0;
}