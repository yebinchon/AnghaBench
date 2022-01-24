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
typedef  int u8 ;
struct lp8788_bl {int mode; int /*<<< orphan*/  lp; } ;
struct TYPE_2__ {int state; int brightness; int max_brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef  enum lp8788_bl_ctrl_mode { ____Placeholder_lp8788_bl_ctrl_mode } lp8788_bl_ctrl_mode ;

/* Variables and functions */
 int BL_CORE_SUSPENDED ; 
 int /*<<< orphan*/  LP8788_BL_BRIGHTNESS ; 
 struct lp8788_bl* FUNC0 (struct backlight_device*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct lp8788_bl*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct backlight_device *bl_dev)
{
	struct lp8788_bl *bl = FUNC0(bl_dev);
	enum lp8788_bl_ctrl_mode mode = bl->mode;

	if (bl_dev->props.state & BL_CORE_SUSPENDED)
		bl_dev->props.brightness = 0;

	if (FUNC1(mode)) {
		int brt = bl_dev->props.brightness;
		int max = bl_dev->props.max_brightness;

		FUNC3(bl, brt, max);
	} else if (FUNC2(mode)) {
		u8 brt = bl_dev->props.brightness;

		FUNC4(bl->lp, LP8788_BL_BRIGHTNESS, brt);
	}

	return 0;
}