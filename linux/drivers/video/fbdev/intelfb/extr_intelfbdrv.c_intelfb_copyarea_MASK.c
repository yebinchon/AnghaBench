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
struct intelfb_info {int depth; int /*<<< orphan*/  pitch; } ;
struct TYPE_2__ {int /*<<< orphan*/  bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct fb_copyarea {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; int /*<<< orphan*/  sy; int /*<<< orphan*/  sx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intelfb_info*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct intelfb_info* FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,struct fb_copyarea const*) ; 
 int /*<<< orphan*/  FUNC4 (struct intelfb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct fb_info *info,
			     const struct fb_copyarea *region)
{
        struct intelfb_info *dinfo = FUNC2(info);

#if VERBOSE > 0
	DBG_MSG("intelfb_copyarea\n");
#endif

	if (!FUNC0(dinfo, info) || dinfo->depth == 4) {
		FUNC3(info, region);
		return;
	}

	FUNC4(dinfo, region->sx, region->sy, region->dx,
			    region->dy, region->width, region->height,
			    dinfo->pitch, info->var.bits_per_pixel);
}