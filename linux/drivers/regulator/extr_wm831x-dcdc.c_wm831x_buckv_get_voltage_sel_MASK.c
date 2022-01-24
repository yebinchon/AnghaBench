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
struct wm831x_dcdc {int dvs_vsel; int on_vsel; scalar_t__ dvs_gpio_state; scalar_t__ dvs_gpiod; } ;
struct regulator_dev {int dummy; } ;

/* Variables and functions */
 struct wm831x_dcdc* FUNC0 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC1(struct regulator_dev *rdev)
{
	struct wm831x_dcdc *dcdc = FUNC0(rdev);

	if (dcdc->dvs_gpiod && dcdc->dvs_gpio_state)
		return dcdc->dvs_vsel;
	else
		return dcdc->on_vsel;
}