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
struct fb_videomode {int flag; } ;
struct fb_var_screeninfo {int bits_per_pixel; } ;
struct fb_monspecs {int modedb_len; int misc; struct fb_videomode* modedb; } ;
struct fb_info {struct fb_monspecs monspecs; } ;

/* Variables and functions */
 int FB_MISC_1ST_DETAIL ; 
 int FB_MODE_IS_FIRST ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct fb_var_screeninfo*,struct fb_info*,scalar_t__,struct fb_videomode*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ mode_option ; 
 int /*<<< orphan*/  FUNC3 (struct fb_var_screeninfo*,struct fb_videomode*) ; 

__attribute__((used)) static void FUNC4(struct fb_var_screeninfo *var,
				    struct fb_info *info)
{
	struct fb_monspecs *specs = &info->monspecs;
	struct fb_videomode modedb;

	FUNC0();
	/* respect mode options */
	if (mode_option) {
		FUNC2(var, info, mode_option,
			     specs->modedb, specs->modedb_len,
			     NULL, 8);
	} else if (specs->modedb != NULL) {
		/* get first mode in database as fallback */
		modedb = specs->modedb[0];
		/* get preferred timing */
		if (info->monspecs.misc & FB_MISC_1ST_DETAIL) {
			int i;

			for (i = 0; i < specs->modedb_len; i++) {
				if (specs->modedb[i].flag & FB_MODE_IS_FIRST) {
					modedb = specs->modedb[i];
					break;
				}
			}
		}
		var->bits_per_pixel = 8;
		FUNC3(var, &modedb);
	}
	FUNC1();
}