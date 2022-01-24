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
struct pm860x_backlight_data {int current_brightness; int /*<<< orphan*/  reg_duty_cycle; int /*<<< orphan*/  i2c; struct pm860x_chip* chip; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct pm860x_backlight_data* FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct backlight_device *bl)
{
	struct pm860x_backlight_data *data = FUNC0(bl);
	struct pm860x_chip *chip = data->chip;
	int ret;

	ret = FUNC2(data->i2c, data->reg_duty_cycle);
	if (ret < 0)
		goto out;
	data->current_brightness = ret;
	FUNC1(chip->dev, "get brightness %d\n", data->current_brightness);
	return data->current_brightness;
out:
	return -EINVAL;
}