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
struct lm3630a_platform_data {scalar_t__ pwm_ctrl; void* ledb_init_brt; void* leda_init_brt; void* ledb_max_brt; void* leda_max_brt; } ;
struct lm3630a_chip {scalar_t__ irq; int /*<<< orphan*/  pwmd; int /*<<< orphan*/ * dev; struct lm3630a_platform_data* pdata; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; scalar_t__ irq; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* LM3630A_MAX_BRIGHTNESS ; 
 scalar_t__ LM3630A_PWM_DISABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 struct lm3630a_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*,struct lm3630a_chip*) ; 
 int FUNC10 (struct lm3630a_chip*) ; 
 int FUNC11 (struct lm3630a_chip*) ; 
 int FUNC12 (struct lm3630a_chip*) ; 
 int FUNC13 (struct lm3630a_chip*,struct lm3630a_platform_data*) ; 
 int /*<<< orphan*/  lm3630a_regmap ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct lm3630a_platform_data *pdata = FUNC3(&client->dev);
	struct lm3630a_chip *pchip;
	int rval;

	if (!FUNC8(client->adapter, I2C_FUNC_I2C)) {
		FUNC2(&client->dev, "fail : i2c functionality check\n");
		return -EOPNOTSUPP;
	}

	pchip = FUNC5(&client->dev, sizeof(struct lm3630a_chip),
			     GFP_KERNEL);
	if (!pchip)
		return -ENOMEM;
	pchip->dev = &client->dev;

	pchip->regmap = FUNC7(client, &lm3630a_regmap);
	if (FUNC0(pchip->regmap)) {
		rval = FUNC1(pchip->regmap);
		FUNC2(&client->dev, "fail : allocate reg. map: %d\n", rval);
		return rval;
	}

	FUNC9(client, pchip);
	if (pdata == NULL) {
		pdata = FUNC5(pchip->dev,
				     sizeof(struct lm3630a_platform_data),
				     GFP_KERNEL);
		if (pdata == NULL)
			return -ENOMEM;

		/* default values */
		pdata->leda_max_brt = LM3630A_MAX_BRIGHTNESS;
		pdata->ledb_max_brt = LM3630A_MAX_BRIGHTNESS;
		pdata->leda_init_brt = LM3630A_MAX_BRIGHTNESS;
		pdata->ledb_init_brt = LM3630A_MAX_BRIGHTNESS;

		rval = FUNC13(pchip, pdata);
		if (rval) {
			FUNC2(&client->dev, "fail : parse node\n");
			return rval;
		}
	}
	pchip->pdata = pdata;

	/* chip initialize */
	rval = FUNC11(pchip);
	if (rval < 0) {
		FUNC2(&client->dev, "fail : init chip\n");
		return rval;
	}
	/* backlight register */
	rval = FUNC10(pchip);
	if (rval < 0) {
		FUNC2(&client->dev, "fail : backlight register.\n");
		return rval;
	}
	/* pwm */
	if (pdata->pwm_ctrl != LM3630A_PWM_DISABLE) {
		pchip->pwmd = FUNC6(pchip->dev, "lm3630a-pwm");
		if (FUNC0(pchip->pwmd)) {
			FUNC2(&client->dev, "fail : get pwm device\n");
			return FUNC1(pchip->pwmd);
		}

		/*
		 * FIXME: pwm_apply_args() should be removed when switching to
		 * the atomic PWM API.
		 */
		FUNC14(pchip->pwmd);
	}

	/* interrupt enable  : irq 0 is not allowed */
	pchip->irq = client->irq;
	if (pchip->irq) {
		rval = FUNC12(pchip);
		if (rval < 0)
			return rval;
	}
	FUNC4(&client->dev, "LM3630A backlight register OK.\n");
	return 0;
}