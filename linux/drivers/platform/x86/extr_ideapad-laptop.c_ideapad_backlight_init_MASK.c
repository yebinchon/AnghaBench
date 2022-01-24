#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ideapad_private {struct backlight_device* blightdev; TYPE_2__* platform_device; TYPE_1__* adev; } ;
struct backlight_properties {unsigned long max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {unsigned long brightness; int /*<<< orphan*/  power; } ;
struct backlight_device {TYPE_3__ props; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_PLATFORM ; 
 int EIO ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  VPCCMD_R_BL ; 
 int /*<<< orphan*/  VPCCMD_R_BL_MAX ; 
 int /*<<< orphan*/  VPCCMD_R_BL_POWER ; 
 struct backlight_device* FUNC2 (char*,int /*<<< orphan*/ *,struct ideapad_private*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_device*) ; 
 int /*<<< orphan*/  ideapad_backlight_ops ; 
 int /*<<< orphan*/  FUNC4 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC7(struct ideapad_private *priv)
{
	struct backlight_device *blightdev;
	struct backlight_properties props;
	unsigned long max, now, power;

	if (FUNC6(priv->adev->handle, VPCCMD_R_BL_MAX, &max))
		return -EIO;
	if (FUNC6(priv->adev->handle, VPCCMD_R_BL, &now))
		return -EIO;
	if (FUNC6(priv->adev->handle, VPCCMD_R_BL_POWER, &power))
		return -EIO;

	FUNC4(&props, 0, sizeof(struct backlight_properties));
	props.max_brightness = max;
	props.type = BACKLIGHT_PLATFORM;
	blightdev = FUNC2("ideapad",
					      &priv->platform_device->dev,
					      priv,
					      &ideapad_backlight_ops,
					      &props);
	if (FUNC0(blightdev)) {
		FUNC5("Could not register backlight device\n");
		return FUNC1(blightdev);
	}

	priv->blightdev = blightdev;
	blightdev->props.brightness = now;
	blightdev->props.power = power ? FB_BLANK_UNBLANK : FB_BLANK_POWERDOWN;
	FUNC3(blightdev);

	return 0;
}