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
struct wm831x_dcdc {int dvs_gpio_state; int /*<<< orphan*/  dvs_gpiod; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct wm831x_dcdc* FUNC1 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC2(struct regulator_dev *rdev, int state)
{
	struct wm831x_dcdc *dcdc = FUNC1(rdev);

	if (state == dcdc->dvs_gpio_state)
		return 0;

	dcdc->dvs_gpio_state = state;
	FUNC0(dcdc->dvs_gpiod, state);

	/* Should wait for DVS state change to be asserted if we have
	 * a GPIO for it, for now assume the device is configured
	 * for the fastest possible transition.
	 */

	return 0;
}