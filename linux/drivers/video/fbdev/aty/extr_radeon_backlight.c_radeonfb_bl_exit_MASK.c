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
struct radeonfb_info {TYPE_1__* info; } ;
struct radeon_bl_privdata {int dummy; } ;
struct backlight_device {int dummy; } ;
struct TYPE_2__ {struct backlight_device* bl_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct backlight_device*) ; 
 struct radeon_bl_privdata* FUNC1 (struct backlight_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_bl_privdata*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(struct radeonfb_info *rinfo)
{
	struct backlight_device *bd = rinfo->info->bl_dev;

	if (bd) {
		struct radeon_bl_privdata *pdata;

		pdata = FUNC1(bd);
		FUNC0(bd);
		FUNC2(pdata);
		rinfo->info->bl_dev = NULL;

		FUNC3("radeonfb: Backlight unloaded\n");
	}
}