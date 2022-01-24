#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct lcd_platform_data {int /*<<< orphan*/  reset_delay; int /*<<< orphan*/  (* reset ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  power_on_delay; int /*<<< orphan*/  (* power_on ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct ams369fg06 {int /*<<< orphan*/  dev; int /*<<< orphan*/  ld; struct backlight_device* bd; struct lcd_platform_data* lcd_pd; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ams369fg06*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ams369fg06*) ; 
 int FUNC2 (struct ams369fg06*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ams369fg06 *lcd)
{
	int ret = 0;
	struct lcd_platform_data *pd;
	struct backlight_device *bd;

	pd = lcd->lcd_pd;
	bd = lcd->bd;

	if (pd->power_on) {
		pd->power_on(lcd->ld, 1);
		FUNC4(pd->power_on_delay);
	}

	if (!pd->reset) {
		FUNC3(lcd->dev, "reset is NULL.\n");
		return -EINVAL;
	}

	pd->reset(lcd->ld);
	FUNC4(pd->reset_delay);

	ret = FUNC2(lcd);
	if (ret) {
		FUNC3(lcd->dev, "failed to initialize ldi.\n");
		return ret;
	}

	ret = FUNC1(lcd);
	if (ret) {
		FUNC3(lcd->dev, "failed to enable ldi.\n");
		return ret;
	}

	/* set brightness to current value after power on or resume. */
	ret = FUNC0(lcd, bd->props.brightness);
	if (ret) {
		FUNC3(lcd->dev, "lcd gamma setting failed.\n");
		return ret;
	}

	return 0;
}