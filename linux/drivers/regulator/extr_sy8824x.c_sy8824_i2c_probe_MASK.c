#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sy8824_device_info {scalar_t__ regulator; struct device* dev; int /*<<< orphan*/  cfg; int /*<<< orphan*/  desc; } ;
struct regulator_config {struct device_node* of_node; struct sy8824_device_info* driver_data; struct regmap* regmap; scalar_t__ init_data; struct device* dev; } ;
struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct i2c_client {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct sy8824_device_info* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct sy8824_device_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 scalar_t__ FUNC7 (struct device*,struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sy8824_regmap_config ; 
 int FUNC8 (struct sy8824_device_info*,struct regulator_config*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device_node *np = dev->of_node;
	struct sy8824_device_info *di;
	struct regulator_config config = { };
	struct regmap *regmap;
	int ret;

	di = FUNC3(dev, sizeof(struct sy8824_device_info), GFP_KERNEL);
	if (!di)
		return -ENOMEM;

	di->regulator = FUNC7(dev, np, &di->desc);
	if (!di->regulator) {
		FUNC2(dev, "Platform data not found!\n");
		return -EINVAL;
	}

	di->dev = dev;
	di->cfg = FUNC6(dev);

	regmap = FUNC4(client, &sy8824_regmap_config);
	if (FUNC0(regmap)) {
		FUNC2(dev, "Failed to allocate regmap!\n");
		return FUNC1(regmap);
	}
	FUNC5(client, di);

	config.dev = di->dev;
	config.init_data = di->regulator;
	config.regmap = regmap;
	config.driver_data = di;
	config.of_node = np;

	ret = FUNC8(di, &config);
	if (ret < 0)
		FUNC2(dev, "Failed to register regulator!\n");
	return ret;
}