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
struct lcd_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HX8357_ENTER_SLEEP_MODE ; 
 int /*<<< orphan*/  HX8357_SET_DISPLAY_OFF ; 
 int FUNC0 (struct lcd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct lcd_device *lcdev)
{
	int ret;

	ret = FUNC0(lcdev, HX8357_SET_DISPLAY_OFF);
	if (ret < 0)
		return ret;

	FUNC2(10000, 12000);

	ret = FUNC0(lcdev, HX8357_ENTER_SLEEP_MODE);
	if (ret < 0)
		return ret;

	/*
	 * The controller needs 120ms when entering in sleep mode before we can
	 * send the command to go off sleep mode
	 */
	FUNC1(120);

	return 0;
}