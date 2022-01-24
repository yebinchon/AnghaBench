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
typedef  int u32 ;
struct pm2fb_par {int dummy; } ;
struct fb_var_screeninfo {int yoffset; scalar_t__ xoffset; } ;
struct TYPE_2__ {int bits_per_pixel; int xres; } ;
struct fb_info {TYPE_1__ var; struct pm2fb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM2R_SCREEN_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct pm2fb_par*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pm2fb_par*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC3(struct fb_var_screeninfo *var,
			     struct fb_info *info)
{
	struct pm2fb_par *p = info->par;
	u32 base;
	u32 depth = (info->var.bits_per_pixel + 7) & ~7;
	u32 xres = (info->var.xres + 31) & ~31;

	depth = (depth > 32) ? 32 : depth;
	base = FUNC2(var->yoffset * xres + var->xoffset, depth, 1);
	FUNC0(p, 1);
	FUNC1(p, PM2R_SCREEN_BASE, base);
	return 0;
}