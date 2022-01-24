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
typedef  size_t u32 ;
struct intelfb_info {int depth; size_t* pseudo_palette; int /*<<< orphan*/  pitch; } ;
struct TYPE_2__ {int /*<<< orphan*/  bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;
struct fb_fillrect {scalar_t__ rop; size_t color; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  dy; int /*<<< orphan*/  dx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intelfb_info*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct intelfb_info* FUNC2 (struct fb_info*) ; 
 size_t PAT_ROP_GXCOPY ; 
 size_t PAT_ROP_GXXOR ; 
 scalar_t__ ROP_COPY ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*,struct fb_fillrect const*) ; 
 int /*<<< orphan*/  FUNC4 (struct intelfb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC5 (struct fb_info *info,
			      const struct fb_fillrect *rect)
{
        struct intelfb_info *dinfo = FUNC2(info);
	u32 rop, color;

#if VERBOSE > 0
	DBG_MSG("intelfb_fillrect\n");
#endif

	if (!FUNC0(dinfo, info) || dinfo->depth == 4) {
		FUNC3(info, rect);
		return;
	}

	if (rect->rop == ROP_COPY)
		rop = PAT_ROP_GXCOPY;
	else /* ROP_XOR */
		rop = PAT_ROP_GXXOR;

	if (dinfo->depth != 8)
		color = dinfo->pseudo_palette[rect->color];
	else
		color = rect->color;

	FUNC4(dinfo, rect->dx, rect->dy,
			      rect->width, rect->height, color,
			      dinfo->pitch, info->var.bits_per_pixel,
			      rop);
}