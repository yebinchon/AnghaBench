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
struct tps65217_bl {int /*<<< orphan*/  is_enabled; int /*<<< orphan*/  dev; int /*<<< orphan*/  tps; } ;
struct TYPE_2__ {int brightness; int state; scalar_t__ power; scalar_t__ fb_blank; } ;
struct backlight_device {TYPE_1__ props; } ;

/* Variables and functions */
 int BL_CORE_SUSPENDED ; 
 scalar_t__ FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  TPS65217_PROTECT_NONE ; 
 int /*<<< orphan*/  TPS65217_REG_WLEDCTRL2 ; 
 struct tps65217_bl* FUNC0 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct tps65217_bl*) ; 
 int FUNC4 (struct tps65217_bl*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct backlight_device *bl)
{
	struct tps65217_bl *tps65217_bl = FUNC0(bl);
	int rc;
	int brightness = bl->props.brightness;

	if (bl->props.state & BL_CORE_SUSPENDED)
		brightness = 0;

	if ((bl->props.power != FB_BLANK_UNBLANK) ||
		(bl->props.fb_blank != FB_BLANK_UNBLANK))
		/* framebuffer in low power mode or blanking active */
		brightness = 0;

	if (brightness > 0) {
		rc = FUNC5(tps65217_bl->tps,
					TPS65217_REG_WLEDCTRL2,
					brightness - 1,
					TPS65217_PROTECT_NONE);
		if (rc) {
			FUNC2(tps65217_bl->dev,
				"failed to set brightness level: %d\n", rc);
			return rc;
		}

		FUNC1(tps65217_bl->dev, "brightness set to %d\n", brightness);

		if (!tps65217_bl->is_enabled)
			rc = FUNC4(tps65217_bl);
	} else {
		rc = FUNC3(tps65217_bl);
	}

	return rc;
}