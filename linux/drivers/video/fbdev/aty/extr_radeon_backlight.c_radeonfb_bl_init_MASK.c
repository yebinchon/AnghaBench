#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct radeonfb_info {scalar_t__ mon1_type; scalar_t__ family; TYPE_2__* info; } ;
struct radeon_bl_privdata {int negative; struct radeonfb_info* rinfo; } ;
struct backlight_properties {scalar_t__ max_brightness; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  power; int /*<<< orphan*/  max_brightness; int /*<<< orphan*/  brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {int node; struct backlight_device* bl_dev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BACKLIGHT_RAW ; 
 scalar_t__ CHIP_FAMILY_RV200 ; 
 scalar_t__ CHIP_FAMILY_RV250 ; 
 scalar_t__ CHIP_FAMILY_RV280 ; 
 scalar_t__ CHIP_FAMILY_RV350 ; 
 scalar_t__ FB_BACKLIGHT_LEVELS ; 
 int FB_BACKLIGHT_MAX ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct backlight_device*) ; 
 int MAX_RADEON_LEVEL ; 
 scalar_t__ MT_LCD ; 
 struct backlight_device* FUNC1 (char*,int /*<<< orphan*/ ,struct radeon_bl_privdata*,int /*<<< orphan*/ *,struct backlight_properties*) ; 
 int /*<<< orphan*/  FUNC2 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_bl_privdata*) ; 
 struct radeon_bl_privdata* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct backlight_properties*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  radeon_bl_data ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 

void FUNC11(struct radeonfb_info *rinfo)
{
	struct backlight_properties props;
	struct backlight_device *bd;
	struct radeon_bl_privdata *pdata;
	char name[12];

	if (rinfo->mon1_type != MT_LCD)
		return;

#ifdef CONFIG_PMAC_BACKLIGHT
	if (!pmac_has_backlight_type("ati") &&
	    !pmac_has_backlight_type("mnca"))
		return;
#endif

	pdata = FUNC5(sizeof(struct radeon_bl_privdata), GFP_KERNEL);
	if (!pdata) {
		FUNC9("radeonfb: Memory allocation failed\n");
		goto error;
	}

	FUNC10(name, sizeof(name), "radeonbl%d", rinfo->info->node);

	FUNC6(&props, 0, sizeof(struct backlight_properties));
	props.type = BACKLIGHT_RAW;
	props.max_brightness = FB_BACKLIGHT_LEVELS - 1;
	bd = FUNC1(name, rinfo->info->dev, pdata,
				       &radeon_bl_data, &props);
	if (FUNC0(bd)) {
		rinfo->info->bl_dev = NULL;
		FUNC9("radeonfb: Backlight registration failed\n");
		goto error;
	}

	pdata->rinfo = rinfo;

	/* Pardon me for that hack... maybe some day we can figure out in what
	 * direction backlight should work on a given panel?
	 */
	pdata->negative =
		(rinfo->family != CHIP_FAMILY_RV200 &&
		 rinfo->family != CHIP_FAMILY_RV250 &&
		 rinfo->family != CHIP_FAMILY_RV280 &&
		 rinfo->family != CHIP_FAMILY_RV350);

#ifdef CONFIG_PMAC_BACKLIGHT
	pdata->negative = pdata->negative ||
		of_machine_is_compatible("PowerBook4,3") ||
		of_machine_is_compatible("PowerBook6,3") ||
		of_machine_is_compatible("PowerBook6,5");
#endif

	rinfo->info->bl_dev = bd;
	FUNC3(rinfo->info, 0,
		 63 * FB_BACKLIGHT_MAX / MAX_RADEON_LEVEL,
		217 * FB_BACKLIGHT_MAX / MAX_RADEON_LEVEL);

	bd->props.brightness = bd->props.max_brightness;
	bd->props.power = FB_BLANK_UNBLANK;
	FUNC2(bd);

	FUNC9("radeonfb: Backlight initialized (%s)\n", name);

	return;

error:
	FUNC4(pdata);
	return;
}