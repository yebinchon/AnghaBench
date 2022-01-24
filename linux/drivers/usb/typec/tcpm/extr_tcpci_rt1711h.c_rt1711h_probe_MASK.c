#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  start_drp_toggling; int /*<<< orphan*/  set_vconn; int /*<<< orphan*/  init; int /*<<< orphan*/  regmap; } ;
struct rt1711h_chip {int /*<<< orphan*/  tcpci; TYPE_1__ data; int /*<<< orphan*/ * dev; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct rt1711h_chip* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct rt1711h_chip*) ; 
 int FUNC7 (struct i2c_client*) ; 
 int /*<<< orphan*/  rt1711h_init ; 
 int FUNC8 (struct rt1711h_chip*,struct i2c_client*) ; 
 int /*<<< orphan*/  rt1711h_regmap_config ; 
 int /*<<< orphan*/  rt1711h_set_vconn ; 
 int /*<<< orphan*/  rt1711h_start_drp_toggling ; 
 int FUNC9 (struct rt1711h_chip*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(struct i2c_client *client,
			 const struct i2c_device_id *i2c_id)
{
	int ret;
	struct rt1711h_chip *chip;

	ret = FUNC7(client);
	if (ret < 0) {
		FUNC3(&client->dev, "check vid/pid fail\n");
		return ret;
	}

	chip = FUNC4(&client->dev, sizeof(*chip), GFP_KERNEL);
	if (!chip)
		return -ENOMEM;

	chip->data.regmap = FUNC5(client,
						 &rt1711h_regmap_config);
	if (FUNC0(chip->data.regmap))
		return FUNC2(chip->data.regmap);

	chip->dev = &client->dev;
	FUNC6(client, chip);

	ret = FUNC9(chip);
	if (ret < 0)
		return ret;

	ret = FUNC8(chip, client);
	if (ret < 0)
		return ret;

	chip->data.init = rt1711h_init;
	chip->data.set_vconn = rt1711h_set_vconn;
	chip->data.start_drp_toggling = rt1711h_start_drp_toggling;
	chip->tcpci = FUNC10(chip->dev, &chip->data);
	if (FUNC1(chip->tcpci))
		return FUNC2(chip->tcpci);

	return 0;
}