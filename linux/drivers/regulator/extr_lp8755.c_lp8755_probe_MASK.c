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
struct lp8755_platform_data {int /*<<< orphan*/  mphase; } ;
struct lp8755_chip {int /*<<< orphan*/  irq; struct lp8755_platform_data* pdata; int /*<<< orphan*/ * dev; int /*<<< orphan*/  mphase; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LP8755_BUCK_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct lp8755_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct lp8755_chip*) ; 
 int FUNC8 (struct lp8755_chip*) ; 
 int FUNC9 (struct lp8755_chip*) ; 
 int /*<<< orphan*/  lp8755_regmap ; 
 int FUNC10 (struct lp8755_chip*) ; 
 int /*<<< orphan*/  FUNC11 (struct lp8755_chip*,int,int) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	int ret, icnt;
	struct lp8755_chip *pchip;
	struct lp8755_platform_data *pdata = FUNC3(&client->dev);

	if (!FUNC6(client->adapter, I2C_FUNC_I2C)) {
		FUNC2(&client->dev, "i2c functionality check fail.\n");
		return -EOPNOTSUPP;
	}

	pchip = FUNC4(&client->dev,
			     sizeof(struct lp8755_chip), GFP_KERNEL);
	if (!pchip)
		return -ENOMEM;

	pchip->dev = &client->dev;
	pchip->regmap = FUNC5(client, &lp8755_regmap);
	if (FUNC0(pchip->regmap)) {
		ret = FUNC1(pchip->regmap);
		FUNC2(&client->dev, "fail to allocate regmap %d\n", ret);
		return ret;
	}
	FUNC7(client, pchip);

	if (pdata != NULL) {
		pchip->pdata = pdata;
		pchip->mphase = pdata->mphase;
	} else {
		pchip->pdata = FUNC4(pchip->dev,
					    sizeof(struct lp8755_platform_data),
					    GFP_KERNEL);
		if (!pchip->pdata)
			return -ENOMEM;
		ret = FUNC8(pchip);
		if (ret < 0) {
			FUNC2(&client->dev, "fail to initialize chip\n");
			return ret;
		}
	}

	ret = FUNC10(pchip);
	if (ret < 0) {
		FUNC2(&client->dev, "fail to initialize regulators\n");
		goto err;
	}

	pchip->irq = client->irq;
	ret = FUNC9(pchip);
	if (ret < 0) {
		FUNC2(&client->dev, "fail to irq config\n");
		goto err;
	}

	return ret;

err:
	/* output disable */
	for (icnt = 0; icnt < LP8755_BUCK_MAX; icnt++)
		FUNC11(pchip, icnt, 0x00);

	return ret;
}