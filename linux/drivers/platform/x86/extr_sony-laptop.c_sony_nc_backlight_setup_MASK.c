#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct backlight_properties {int max_brightness; int /*<<< orphan*/  type; } ;
struct backlight_ops {int /*<<< orphan*/  (* get_brightness ) (TYPE_2__*) ;} ;
struct TYPE_10__ {int cmd_base; int maxlvl; int offset; TYPE_2__* dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  brightness; } ;
struct TYPE_9__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_PLATFORM ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int SONY_MAX_BRIGHTNESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC2 (char*,int /*<<< orphan*/ *,TYPE_3__*,struct backlight_ops const*,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC3 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct backlight_ops sony_backlight_ng_ops ; 
 struct backlight_ops sony_backlight_ops ; 
 TYPE_3__ sony_bl_props ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  sony_nc_acpi_handle ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(void)
{
	int max_brightness = 0;
	const struct backlight_ops *ops = NULL;
	struct backlight_properties props;

	if (FUNC5(0x12f) >= 0) {
		ops = &sony_backlight_ng_ops;
		sony_bl_props.cmd_base = 0x0100;
		FUNC6(0x12f, &sony_bl_props);
		max_brightness = sony_bl_props.maxlvl - sony_bl_props.offset;

	} else if (FUNC5(0x137) >= 0) {
		ops = &sony_backlight_ng_ops;
		sony_bl_props.cmd_base = 0x0100;
		FUNC6(0x137, &sony_bl_props);
		max_brightness = sony_bl_props.maxlvl - sony_bl_props.offset;

	} else if (FUNC5(0x143) >= 0) {
		ops = &sony_backlight_ng_ops;
		sony_bl_props.cmd_base = 0x3000;
		FUNC6(0x143, &sony_bl_props);
		max_brightness = sony_bl_props.maxlvl - sony_bl_props.offset;

	} else if (FUNC5(0x14b) >= 0) {
		ops = &sony_backlight_ng_ops;
		sony_bl_props.cmd_base = 0x3000;
		FUNC6(0x14b, &sony_bl_props);
		max_brightness = sony_bl_props.maxlvl - sony_bl_props.offset;

	} else if (FUNC5(0x14c) >= 0) {
		ops = &sony_backlight_ng_ops;
		sony_bl_props.cmd_base = 0x3000;
		FUNC6(0x14c, &sony_bl_props);
		max_brightness = sony_bl_props.maxlvl - sony_bl_props.offset;

	} else if (FUNC1(sony_nc_acpi_handle, "GBRT")) {
		ops = &sony_backlight_ops;
		max_brightness = SONY_MAX_BRIGHTNESS - 1;

	} else
		return;

	FUNC3(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_PLATFORM;
	props.max_brightness = max_brightness;
	sony_bl_props.dev = FUNC2("sony", NULL,
						      &sony_bl_props,
						      ops, &props);

	if (FUNC0(sony_bl_props.dev)) {
		FUNC4("unable to register backlight device\n");
		sony_bl_props.dev = NULL;
	} else
		sony_bl_props.dev->props.brightness =
			ops->get_brightness(sony_bl_props.dev);
}