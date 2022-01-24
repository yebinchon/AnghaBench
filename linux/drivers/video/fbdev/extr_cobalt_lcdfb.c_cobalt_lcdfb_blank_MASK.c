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

/* Variables and functions */
#define  FB_BLANK_UNBLANK 128 
 int /*<<< orphan*/  LCD_OFF ; 
 int /*<<< orphan*/  LCD_ON ; 
 int FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(int blank_mode, struct fb_info *info)
{
	int retval;

	retval = FUNC0(info);
	if (retval < 0)
		return retval;

	switch (blank_mode) {
	case FB_BLANK_UNBLANK:
		FUNC1(info, LCD_ON);
		break;
	default:
		FUNC1(info, LCD_OFF);
		break;
	}

	return 0;
}