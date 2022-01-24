#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gxt4500_par {int /*<<< orphan*/  pixfmt; } ;
struct fb_var_screeninfo {int /*<<< orphan*/  pixclock; } ;
struct fb_info {scalar_t__ par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gxt4500_par*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_var_screeninfo*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fb_var_screeninfo*,struct gxt4500_par*) ; 

__attribute__((used)) static int FUNC3(struct fb_var_screeninfo *var,
			     struct fb_info *info)
{
	struct gxt4500_par par;
	int err;

	par = *(struct gxt4500_par *)info->par;
	err = FUNC2(var, &par);
	if (!err) {
		var->pixclock = FUNC0(&par);
		FUNC1(var, par.pixfmt);
	}
	return err;
}