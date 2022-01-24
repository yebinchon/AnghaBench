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
struct pm860x_chip {int /*<<< orphan*/  dev; } ;
struct pm860x_backlight_data {unsigned char current_brightness; int /*<<< orphan*/  port; int /*<<< orphan*/  reg_always_on; int /*<<< orphan*/  i2c; scalar_t__ pwm; scalar_t__ iset; int /*<<< orphan*/  reg_current; int /*<<< orphan*/  reg_duty_cycle; struct pm860x_chip* chip; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CURRENT_BITMASK ; 
 int MAX_BRIGHTNESS ; 
 int /*<<< orphan*/  PM8606_PWM ; 
 scalar_t__ PM8606_PWM_FREQ_MASK ; 
 scalar_t__ PM8606_WLED_ON ; 
 int /*<<< orphan*/  FUNC0 (struct pm860x_chip*,int /*<<< orphan*/ ,int) ; 
 struct pm860x_backlight_data* FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned char,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct backlight_device *bl, int brightness)
{
	struct pm860x_backlight_data *data = FUNC1(bl);
	struct pm860x_chip *chip = data->chip;
	unsigned char value;
	int ret;

	if (brightness > MAX_BRIGHTNESS)
		value = MAX_BRIGHTNESS;
	else
		value = brightness;

	if (brightness)
		FUNC0(chip, data->port, 1);

	ret = FUNC3(data->i2c, data->reg_duty_cycle, value);
	if (ret < 0)
		goto out;

	if ((data->current_brightness == 0) && brightness) {
		if (data->iset) {
			ret = FUNC4(data->i2c, data->reg_current,
					      CURRENT_BITMASK, data->iset);
			if (ret < 0)
				goto out;
		}
		if (data->pwm) {
			ret = FUNC4(data->i2c, PM8606_PWM,
					      PM8606_PWM_FREQ_MASK, data->pwm);
			if (ret < 0)
				goto out;
		}
		if (brightness == MAX_BRIGHTNESS) {
			/* set WLED_ON bit as 100% */
			ret = FUNC4(data->i2c, data->reg_always_on,
					      PM8606_WLED_ON, PM8606_WLED_ON);
		}
	} else {
		if (brightness == MAX_BRIGHTNESS) {
			/* set WLED_ON bit as 100% */
			ret = FUNC4(data->i2c, data->reg_always_on,
					      PM8606_WLED_ON, PM8606_WLED_ON);
		} else {
			/* clear WLED_ON bit since it's not 100% */
			ret = FUNC4(data->i2c, data->reg_always_on,
					      PM8606_WLED_ON, 0);
		}
	}
	if (ret < 0)
		goto out;

	if (brightness == 0)
		FUNC0(chip, data->port, 0);

	FUNC2(chip->dev, "set brightness %d\n", value);
	data->current_brightness = value;
	return 0;
out:
	FUNC2(chip->dev, "set brightness %d failure with return value: %d\n",
		value, ret);
	return ret;
}