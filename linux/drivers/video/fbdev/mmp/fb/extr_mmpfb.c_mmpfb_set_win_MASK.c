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
typedef  int /*<<< orphan*/  win ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  yres; int /*<<< orphan*/  xres; } ;
struct mmpfb_info {int /*<<< orphan*/  overlay; int /*<<< orphan*/  pix_fmt; TYPE_1__ mode; } ;
struct mmp_win {int* pitch; int /*<<< orphan*/  pix_fmt; int /*<<< orphan*/  ydst; int /*<<< orphan*/  ysrc; int /*<<< orphan*/  xdst; int /*<<< orphan*/  xsrc; } ;
struct fb_var_screeninfo {int xres_virtual; } ;
struct fb_info {struct fb_var_screeninfo var; struct mmpfb_info* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmp_win*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mmp_win*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct fb_info *info)
{
	struct mmpfb_info *fbi = info->par;
	struct fb_var_screeninfo *var = &info->var;
	struct mmp_win win;
	u32 stride;

	FUNC0(&win, 0, sizeof(win));
	win.xsrc = win.xdst = fbi->mode.xres;
	win.ysrc = win.ydst = fbi->mode.yres;
	win.pix_fmt = fbi->pix_fmt;
	stride = FUNC2(win.pix_fmt);
	win.pitch[0] = var->xres_virtual * stride;
	win.pitch[1] = win.pitch[2] =
		(stride == 1) ? (var->xres_virtual >> 1) : 0;
	FUNC1(fbi->overlay, &win);
}