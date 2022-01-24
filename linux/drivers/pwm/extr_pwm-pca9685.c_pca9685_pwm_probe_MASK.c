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
struct TYPE_3__ {int base; int /*<<< orphan*/ * dev; scalar_t__ npwm; int /*<<< orphan*/ * ops; } ;
struct pca9685 {TYPE_1__ chip; int /*<<< orphan*/  regmap; int /*<<< orphan*/  period_ns; scalar_t__ duty_ns; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MODE2_INVRT ; 
 int MODE2_OUTDRV ; 
 int /*<<< orphan*/  PCA9685_ALL_LED_OFF_H ; 
 int /*<<< orphan*/  PCA9685_ALL_LED_OFF_L ; 
 int /*<<< orphan*/  PCA9685_DEFAULT_PERIOD ; 
 scalar_t__ PCA9685_MAXCHAN ; 
 int /*<<< orphan*/  PCA9685_MODE2 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct pca9685* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct pca9685*) ; 
 int FUNC7 (struct pca9685*) ; 
 int /*<<< orphan*/  pca9685_pwm_ops ; 
 int /*<<< orphan*/  pca9685_regmap_i2c_config ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct pca9685 *pca;
	int ret;
	int mode2;

	pca = FUNC4(&client->dev, sizeof(*pca), GFP_KERNEL);
	if (!pca)
		return -ENOMEM;

	pca->regmap = FUNC5(client, &pca9685_regmap_i2c_config);
	if (FUNC0(pca->regmap)) {
		ret = FUNC1(pca->regmap);
		FUNC2(&client->dev, "Failed to initialize register map: %d\n",
			ret);
		return ret;
	}
	pca->duty_ns = 0;
	pca->period_ns = PCA9685_DEFAULT_PERIOD;

	FUNC6(client, pca);

	FUNC12(pca->regmap, PCA9685_MODE2, &mode2);

	if (FUNC3(&client->dev, "invert"))
		mode2 |= MODE2_INVRT;
	else
		mode2 &= ~MODE2_INVRT;

	if (FUNC3(&client->dev, "open-drain"))
		mode2 &= ~MODE2_OUTDRV;
	else
		mode2 |= MODE2_OUTDRV;

	FUNC13(pca->regmap, PCA9685_MODE2, mode2);

	/* clear all "full off" bits */
	FUNC13(pca->regmap, PCA9685_ALL_LED_OFF_L, 0);
	FUNC13(pca->regmap, PCA9685_ALL_LED_OFF_H, 0);

	pca->chip.ops = &pca9685_pwm_ops;
	/* add an extra channel for ALL_LED */
	pca->chip.npwm = PCA9685_MAXCHAN + 1;

	pca->chip.dev = &client->dev;
	pca->chip.base = -1;

	ret = FUNC10(&pca->chip);
	if (ret < 0)
		return ret;

	ret = FUNC7(pca);
	if (ret < 0) {
		FUNC11(&pca->chip);
		return ret;
	}

	/* the chip comes out of power-up in the active state */
	FUNC9(&client->dev);
	/*
	 * enable will put the chip into suspend, which is what we
	 * want as all outputs are disabled at this point
	 */
	FUNC8(&client->dev);

	return 0;
}