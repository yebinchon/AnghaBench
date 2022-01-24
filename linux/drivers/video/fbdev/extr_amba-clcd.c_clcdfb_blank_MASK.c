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
struct fb_info {int dummy; } ;
struct clcd_fb {int /*<<< orphan*/  clcd_cntl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clcd_fb*) ; 
 int /*<<< orphan*/  FUNC1 (struct clcd_fb*,int /*<<< orphan*/ ) ; 
 struct clcd_fb* FUNC2 (struct fb_info*) ; 

__attribute__((used)) static int FUNC3(int blank_mode, struct fb_info *info)
{
	struct clcd_fb *fb = FUNC2(info);

	if (blank_mode != 0) {
		FUNC0(fb);
	} else {
		FUNC1(fb, fb->clcd_cntl);
	}
	return 0;
}