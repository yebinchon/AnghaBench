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
typedef  int u32 ;
struct TYPE_3__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; scalar_t__ par; } ;
struct fb_copyarea {int dy; int sy; int sx; int dx; int width; int height; } ;
struct TYPE_4__ {int dp_pix_width; } ;
struct atyfb_par {TYPE_2__ crtc; int /*<<< orphan*/  accel_flags; scalar_t__ asleep; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_PIX_WIDTH ; 
 int /*<<< orphan*/  DP_SRC ; 
 int /*<<< orphan*/  DST_CNTL ; 
 int DST_LAST_PEL ; 
 int DST_X_LEFT_TO_RIGHT ; 
 int DST_Y_TOP_TO_BOTTOM ; 
 int FRGD_SRC_BLIT ; 
 int /*<<< orphan*/  SRC_HEIGHT1_WIDTH1 ; 
 int /*<<< orphan*/  SRC_Y_X ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct atyfb_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,struct fb_copyarea const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int,struct atyfb_par*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct atyfb_par*) ; 

void FUNC5(struct fb_info *info, const struct fb_copyarea *area)
{
	struct atyfb_par *par = (struct atyfb_par *) info->par;
	u32 dy = area->dy, sy = area->sy, direction = DST_LAST_PEL;
	u32 sx = area->sx, dx = area->dx, width = area->width, rotation = 0;

	if (par->asleep)
		return;
	if (!area->width || !area->height)
		return;
	if (!par->accel_flags) {
		FUNC1(info, area);
		return;
	}

	if (info->var.bits_per_pixel == 24) {
		/* In 24 bpp, the engine is in 8 bpp - this requires that all */
		/* horizontal coordinates and widths must be adjusted */
		sx *= 3;
		dx *= 3;
		width *= 3;
	}

	if (area->sy < area->dy) {
		dy += area->height - 1;
		sy += area->height - 1;
	} else
		direction |= DST_Y_TOP_TO_BOTTOM;

	if (sx < dx) {
		dx += width - 1;
		sx += width - 1;
	} else
		direction |= DST_X_LEFT_TO_RIGHT;

	if (info->var.bits_per_pixel == 24) {
		rotation = FUNC3(dx, direction);
	}

	FUNC4(5, par);
	FUNC0(DP_PIX_WIDTH, par->crtc.dp_pix_width, par);
	FUNC0(DP_SRC, FRGD_SRC_BLIT, par);
	FUNC0(SRC_Y_X, (sx << 16) | sy, par);
	FUNC0(SRC_HEIGHT1_WIDTH1, (width << 16) | area->height, par);
	FUNC0(DST_CNTL, direction | rotation, par);
	FUNC2(dx, dy, width, area->height, par);
}