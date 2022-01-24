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
typedef  int /*<<< orphan*/  u16 ;
struct fb_videomode {int dummy; } ;
struct fb_var_screeninfo {int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; int /*<<< orphan*/  pixclock; } ;
struct TYPE_6__ {TYPE_2__* shared; } ;
struct TYPE_4__ {int max_pixel_clock; } ;
struct TYPE_5__ {TYPE_1__ tmds_setting_info; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_var_screeninfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_var_screeninfo*,struct fb_videomode const*) ; 
 struct fb_videomode* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* viaparinfo ; 

void FUNC4(const struct fb_var_screeninfo *var,
	u16 cxres, u16 cyres, int iga)
{
	struct fb_var_screeninfo dvi_var = *var;
	const struct fb_videomode *rb_mode;
	int maxPixelClock;

	maxPixelClock = viaparinfo->shared->tmds_setting_info.max_pixel_clock;
	if (maxPixelClock && FUNC0(var->pixclock) / 1000 > maxPixelClock) {
		rb_mode = FUNC3(var->xres, var->yres, 60);
		if (rb_mode)
			FUNC2(&dvi_var, rb_mode);
	}

	FUNC1(&dvi_var, cxres, cyres, iga);
}