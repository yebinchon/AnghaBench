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
struct fb_var_screeninfo {int dummy; } ;
struct fb_par_valkyrie {int dummy; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_par_valkyrie*,struct fb_var_screeninfo*) ; 
 int FUNC1 (struct fb_var_screeninfo*,struct fb_par_valkyrie*,struct fb_info*) ; 

__attribute__((used)) static int
FUNC2(struct fb_var_screeninfo *var, struct fb_info *info)
{
	int err;
	struct fb_par_valkyrie par;

	if ((err = FUNC1(var, &par, info)))
		return err;
	FUNC0(&par, var);
	return 0;
}