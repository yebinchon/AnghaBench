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
struct fb_info {struct da8xx_fb_par* par; } ;
struct da8xx_fb_par {int blank; int /*<<< orphan*/  lcd_supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA8XX_FRAME_WAIT ; 
 int EINVAL ; 
#define  FB_BLANK_HSYNC_SUSPEND 132 
#define  FB_BLANK_NORMAL 131 
#define  FB_BLANK_POWERDOWN 130 
#define  FB_BLANK_UNBLANK 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int blank, struct fb_info *info)
{
	struct da8xx_fb_par *par = info->par;
	int ret = 0;

	if (par->blank == blank)
		return 0;

	par->blank = blank;
	switch (blank) {
	case FB_BLANK_UNBLANK:
		FUNC1();

		if (par->lcd_supply) {
			ret = FUNC3(par->lcd_supply);
			if (ret)
				return ret;
		}
		break;
	case FB_BLANK_NORMAL:
	case FB_BLANK_VSYNC_SUSPEND:
	case FB_BLANK_HSYNC_SUSPEND:
	case FB_BLANK_POWERDOWN:
		if (par->lcd_supply) {
			ret = FUNC2(par->lcd_supply);
			if (ret)
				return ret;
		}

		FUNC0(DA8XX_FRAME_WAIT);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}