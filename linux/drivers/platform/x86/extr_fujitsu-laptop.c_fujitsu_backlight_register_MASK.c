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
struct fujitsu_bl {struct backlight_device* bl_device; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  brightness_level; } ;
struct backlight_properties {int /*<<< orphan*/  type; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  brightness; } ;
struct backlight_device {int dummy; } ;
struct acpi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_PLATFORM ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int FUNC1 (struct backlight_device*) ; 
 struct fujitsu_bl* FUNC2 (struct acpi_device*) ; 
 struct backlight_device* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,struct acpi_device*,int /*<<< orphan*/ *,struct backlight_properties const*) ; 
 int /*<<< orphan*/  fujitsu_bl_ops ; 

__attribute__((used)) static int FUNC4(struct acpi_device *device)
{
	struct fujitsu_bl *priv = FUNC2(device);
	const struct backlight_properties props = {
		.brightness = priv->brightness_level,
		.max_brightness = priv->max_brightness - 1,
		.type = BACKLIGHT_PLATFORM
	};
	struct backlight_device *bd;

	bd = FUNC3(&device->dev, "fujitsu-laptop",
					    &device->dev, device,
					    &fujitsu_bl_ops, &props);
	if (FUNC0(bd))
		return FUNC1(bd);

	priv->bl_device = bd;

	return 0;
}