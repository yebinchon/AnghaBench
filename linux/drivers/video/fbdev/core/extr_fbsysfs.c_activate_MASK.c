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
struct fb_var_screeninfo {int /*<<< orphan*/  activate; } ;
struct fb_info {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FBINFO_MISC_USEREVENT ; 
 int /*<<< orphan*/  FB_ACTIVATE_FORCE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct fb_info*,struct fb_var_screeninfo*) ; 

__attribute__((used)) static int FUNC3(struct fb_info *fb_info, struct fb_var_screeninfo *var)
{
	int err;

	var->activate |= FB_ACTIVATE_FORCE;
	FUNC0();
	fb_info->flags |= FBINFO_MISC_USEREVENT;
	err = FUNC2(fb_info, var);
	fb_info->flags &= ~FBINFO_MISC_USEREVENT;
	FUNC1();
	if (err)
		return err;
	return 0;
}