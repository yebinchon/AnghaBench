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
struct wm8505fb_info {scalar_t__ regbase; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
#define  FB_BLANK_UNBLANK 128 
 scalar_t__ WMT_GOVR_TIMING_V_SYNC ; 
 struct wm8505fb_info* FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(int blank, struct fb_info *info)
{
	struct wm8505fb_info *fbi = FUNC0(info);

	switch (blank) {
	case FB_BLANK_UNBLANK:
		FUNC1(info);
		break;
	default:
		FUNC2(0,  fbi->regbase + WMT_GOVR_TIMING_V_SYNC);
		break;
	}

	return 0;
}