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
struct pm3_par {int /*<<< orphan*/  base; } ;
struct fb_var_screeninfo {int const yoffset; scalar_t__ xoffset; } ;
struct TYPE_2__ {int xres; int /*<<< orphan*/  bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; struct pm3_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM3ScreenBase ; 
 int /*<<< orphan*/  FUNC0 (struct pm3_par*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pm3_par*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct fb_var_screeninfo *var,
				 struct fb_info *info)
{
	struct pm3_par *par = info->par;
	const u32 xres = (info->var.xres + 31) & ~31;

	par->base = FUNC2(info->var.bits_per_pixel,
					(var->yoffset * xres)
					+ var->xoffset);
	FUNC0(par, 1);
	FUNC1(par, PM3ScreenBase, par->base);
	return 0;
}