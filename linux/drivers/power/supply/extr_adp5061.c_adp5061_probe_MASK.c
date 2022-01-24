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
struct power_supply_config {struct adp5061_state* drv_data; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct adp5061_state {int /*<<< orphan*/  psy; int /*<<< orphan*/  regmap; struct i2c_client* client; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adp5061_desc ; 
 int /*<<< orphan*/  adp5061_regmap_config ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct adp5061_state* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct power_supply_config*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct adp5061_state*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct power_supply_config psy_cfg = {};
	struct adp5061_state *st;

	st = FUNC3(&client->dev, sizeof(*st), GFP_KERNEL);
	if (!st)
		return -ENOMEM;

	st->client = client;
	st->regmap = FUNC5(client,
					  &adp5061_regmap_config);
	if (FUNC0(st->regmap)) {
		FUNC2(&client->dev, "Failed to initialize register map\n");
		return -EINVAL;
	}

	FUNC6(client, st);
	psy_cfg.drv_data = st;

	st->psy = FUNC4(&client->dev,
					     &adp5061_desc,
					     &psy_cfg);

	if (FUNC0(st->psy)) {
		FUNC2(&client->dev, "Failed to register power supply\n");
		return FUNC1(st->psy);
	}

	return 0;
}