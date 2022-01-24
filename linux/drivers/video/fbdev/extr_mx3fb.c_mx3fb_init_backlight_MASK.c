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
struct mx3fb_data {struct backlight_device* bl; int /*<<< orphan*/  dev; int /*<<< orphan*/  backlight_level; } ;
struct backlight_properties {int max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {int /*<<< orphan*/  brightness; void* fb_blank; void* power; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 void* FB_BLANK_UNBLANK ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct backlight_device*) ; 
 struct backlight_device* FUNC2 (char*,int /*<<< orphan*/ ,struct mx3fb_data*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct backlight_device*) ; 
 int /*<<< orphan*/  mx3fb_lcdc_bl_ops ; 
 int /*<<< orphan*/  FUNC6 (struct mx3fb_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct mx3fb_data *fbd)
{
	struct backlight_properties props;
	struct backlight_device	*bl;

	if (fbd->bl)
		return;

	FUNC4(&props, 0, sizeof(struct backlight_properties));
	props.max_brightness = 0xff;
	props.type = BACKLIGHT_RAW;
	FUNC6(fbd, fbd->backlight_level);

	bl = FUNC2("mx3fb-bl", fbd->dev, fbd,
				       &mx3fb_lcdc_bl_ops, &props);
	if (FUNC0(bl)) {
		FUNC3(fbd->dev, "error %ld on backlight register\n",
				FUNC1(bl));
		return;
	}

	fbd->bl = bl;
	bl->props.power = FB_BLANK_UNBLANK;
	bl->props.fb_blank = FB_BLANK_UNBLANK;
	bl->props.brightness = FUNC5(bl);
}