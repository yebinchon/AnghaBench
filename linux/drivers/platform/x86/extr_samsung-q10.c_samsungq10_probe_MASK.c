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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct backlight_properties {int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  type; } ;
struct backlight_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_PLATFORM ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  SAMSUNGQ10_BL_MAX_INTENSITY ; 
 struct backlight_device* FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct backlight_device*) ; 
 int /*<<< orphan*/  samsungq10_bl_ops ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{

	struct backlight_properties props;
	struct backlight_device *bd;

	FUNC3(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_PLATFORM;
	props.max_brightness = SAMSUNGQ10_BL_MAX_INTENSITY;
	bd = FUNC2("samsung", &pdev->dev, NULL,
				       &samsungq10_bl_ops, &props);
	if (FUNC0(bd))
		return FUNC1(bd);

	FUNC4(pdev, bd);

	return 0;
}