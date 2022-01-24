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
struct lms501kf03 {int /*<<< orphan*/  dev; int /*<<< orphan*/  ld; struct lcd_platform_data* lcd_pd; } ;
struct lcd_platform_data {int /*<<< orphan*/  reset_delay; int /*<<< orphan*/  (* reset ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  power_on_delay; int /*<<< orphan*/  (* power_on ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct lms501kf03*) ; 
 int FUNC2 (struct lms501kf03*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct lms501kf03 *lcd)
{
	int ret = 0;
	struct lcd_platform_data *pd;

	pd = lcd->lcd_pd;

	if (!pd->power_on) {
		FUNC0(lcd->dev, "power_on is NULL.\n");
		return -EINVAL;
	}

	pd->power_on(lcd->ld, 1);
	FUNC3(pd->power_on_delay);

	if (!pd->reset) {
		FUNC0(lcd->dev, "reset is NULL.\n");
		return -EINVAL;
	}

	pd->reset(lcd->ld);
	FUNC3(pd->reset_delay);

	ret = FUNC2(lcd);
	if (ret) {
		FUNC0(lcd->dev, "failed to initialize ldi.\n");
		return ret;
	}

	ret = FUNC1(lcd);
	if (ret) {
		FUNC0(lcd->dev, "failed to enable ldi.\n");
		return ret;
	}

	return 0;
}