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
struct fb_var_screeninfo {int vmode; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int FB_VMODE_DOUBLE ; 
 int FB_VMODE_MASK ; 
 int FB_VMODE_NONINTERLACED ; 
 scalar_t__ IS_DVT ; 
 int FUNC0 (struct fb_var_screeninfo*,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_var_screeninfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_var_screeninfo*) ; 

__attribute__((used)) static int FUNC4(struct fb_var_screeninfo *var, 
			    struct fb_info *info)
{
	int err;

	if (IS_DVT) {
		var->vmode &= ~FB_VMODE_MASK;
		var->vmode |= FB_VMODE_NONINTERLACED;
	}
	if (var->vmode & FB_VMODE_DOUBLE) {
		var->vmode &= ~FB_VMODE_MASK;
		var->vmode |= FB_VMODE_NONINTERLACED;
	}

	FUNC1(var);
	if ((err = FUNC0(var, info)))
		return err;

	FUNC2(var);
	FUNC3(var);
	return 0;
}