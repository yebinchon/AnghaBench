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
struct regulator {int dummy; } ;
struct gpio_vbus_data {int vbus_draw_enabled; unsigned int mA; struct regulator* vbus_draw; } ;

/* Variables and functions */
 int FUNC0 (struct regulator*) ; 
 int FUNC1 (struct regulator*) ; 
 int /*<<< orphan*/  FUNC2 (struct regulator*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct gpio_vbus_data *gpio_vbus, unsigned mA)
{
	struct regulator *vbus_draw = gpio_vbus->vbus_draw;
	int enabled;
	int ret;

	if (!vbus_draw)
		return;

	enabled = gpio_vbus->vbus_draw_enabled;
	if (mA) {
		FUNC2(vbus_draw, 0, 1000 * mA);
		if (!enabled) {
			ret = FUNC1(vbus_draw);
			if (ret < 0)
				return;
			gpio_vbus->vbus_draw_enabled = 1;
		}
	} else {
		if (enabled) {
			ret = FUNC0(vbus_draw);
			if (ret < 0)
				return;
			gpio_vbus->vbus_draw_enabled = 0;
		}
	}
	gpio_vbus->mA = mA;
}