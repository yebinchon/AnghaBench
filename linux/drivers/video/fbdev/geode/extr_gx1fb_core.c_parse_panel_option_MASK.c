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
struct geodefb_par {int panel_x; int panel_y; } ;
struct fb_info {struct geodefb_par* par; } ;

/* Variables and functions */
 int EINVAL ; 
 char* panel_option ; 
 int FUNC0 (char*,char**,int) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static int FUNC2(struct fb_info *info)
{
	struct geodefb_par *par = info->par;

	if (FUNC1(panel_option, "") != 0) {
		int x, y;
		char *s;
		x = FUNC0(panel_option, &s, 10);
		if (!x)
			return -EINVAL;
		y = FUNC0(s + 1, NULL, 10);
		if (!y)
			return -EINVAL;
		par->panel_x = x;
		par->panel_y = y;
	}
	return 0;
}