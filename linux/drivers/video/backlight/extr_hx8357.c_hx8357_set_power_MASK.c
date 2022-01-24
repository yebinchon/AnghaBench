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
struct lcd_device {int /*<<< orphan*/  dev; } ;
struct hx8357_data {int state; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct lcd_device*) ; 
 int FUNC3 (struct lcd_device*) ; 
 struct hx8357_data* FUNC4 (struct lcd_device*) ; 

__attribute__((used)) static int FUNC5(struct lcd_device *lcdev, int power)
{
	struct hx8357_data *lcd = FUNC4(lcdev);
	int ret = 0;

	if (FUNC0(power) && !FUNC0(lcd->state))
		ret = FUNC3(lcdev);
	else if (!FUNC0(power) && FUNC0(lcd->state))
		ret = FUNC2(lcdev);

	if (ret == 0)
		lcd->state = power;
	else
		FUNC1(&lcdev->dev, "failed to set power mode %d\n", power);

	return ret;
}