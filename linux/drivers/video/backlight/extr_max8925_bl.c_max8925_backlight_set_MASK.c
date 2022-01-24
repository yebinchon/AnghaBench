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
struct max8925_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c; } ;
struct max8925_backlight_data {unsigned char current_brightness; int /*<<< orphan*/  reg_mode_cntl; int /*<<< orphan*/  reg_cntl; struct max8925_chip* chip; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int MAX_BRIGHTNESS ; 
 struct max8925_backlight_data* FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned char,...) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct backlight_device *bl, int brightness)
{
	struct max8925_backlight_data *data = FUNC0(bl);
	struct max8925_chip *chip = data->chip;
	unsigned char value;
	int ret;

	if (brightness > MAX_BRIGHTNESS)
		value = MAX_BRIGHTNESS;
	else
		value = brightness;

	ret = FUNC2(chip->i2c, data->reg_cntl, value);
	if (ret < 0)
		goto out;

	if (!data->current_brightness && brightness)
		/* enable WLED output */
		ret = FUNC3(chip->i2c, data->reg_mode_cntl, 1, 1);
	else if (!brightness)
		/* disable WLED output */
		ret = FUNC3(chip->i2c, data->reg_mode_cntl, 1, 0);
	if (ret < 0)
		goto out;
	FUNC1(chip->dev, "set brightness %d\n", value);
	data->current_brightness = value;
	return 0;
out:
	FUNC1(chip->dev, "set brightness %d failure with return value:%d\n",
		value, ret);
	return ret;
}