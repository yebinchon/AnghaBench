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
struct omapfb_info {int /*<<< orphan*/  region; int /*<<< orphan*/  id; } ;
struct fb_var_screeninfo {scalar_t__ xoffset; scalar_t__ yoffset; } ;
struct fb_info {struct fb_var_screeninfo var; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 struct omapfb_info* FUNC1 (struct fb_info*) ; 
 int FUNC2 (struct fb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct fb_var_screeninfo *var,
		struct fb_info *fbi)
{
	struct omapfb_info *ofbi = FUNC1(fbi);
	struct fb_var_screeninfo new_var;
	int r;

	FUNC0("pan_display(%d)\n", FUNC1(fbi)->id);

	if (var->xoffset == fbi->var.xoffset &&
	    var->yoffset == fbi->var.yoffset)
		return 0;

	new_var = fbi->var;
	new_var.xoffset = var->xoffset;
	new_var.yoffset = var->yoffset;

	fbi->var = new_var;

	FUNC3(ofbi->region);

	r = FUNC2(fbi, 0);

	FUNC4(ofbi->region);

	return r;
}