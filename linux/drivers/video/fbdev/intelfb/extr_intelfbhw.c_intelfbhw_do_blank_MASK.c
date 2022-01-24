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
typedef  int u32 ;
struct intelfb_info {int cursor_on; int cursor_blanked; } ;
struct fb_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADPA ; 
 int ADPA_DPMS_CONTROL_MASK ; 
 int ADPA_DPMS_D0 ; 
 int ADPA_DPMS_D1 ; 
 int ADPA_DPMS_D2 ; 
 int ADPA_DPMS_D3 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int DISPPLANE_PLANE_ENABLE ; 
 int /*<<< orphan*/  DSPABASE ; 
 int /*<<< orphan*/  DSPACNTR ; 
#define  FB_BLANK_HSYNC_SUSPEND 132 
#define  FB_BLANK_NORMAL 131 
#define  FB_BLANK_POWERDOWN 130 
#define  FB_BLANK_UNBLANK 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 struct intelfb_info* FUNC1 (struct fb_info*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intelfb_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct intelfb_info*) ; 

void FUNC6(int blank, struct fb_info *info)
{
	struct intelfb_info *dinfo = FUNC1(info);
	u32 tmp;

#if VERBOSE > 0
	DBG_MSG("intelfbhw_do_blank: blank is %d\n", blank);
#endif

	/* Turn plane A on or off */
	tmp = FUNC2(DSPACNTR);
	if (blank)
		tmp &= ~DISPPLANE_PLANE_ENABLE;
	else
		tmp |= DISPPLANE_PLANE_ENABLE;
	FUNC3(DSPACNTR, tmp);
	/* Flush */
	tmp = FUNC2(DSPABASE);
	FUNC3(DSPABASE, tmp);

	/* Turn off/on the HW cursor */
#if VERBOSE > 0
	DBG_MSG("cursor_on is %d\n", dinfo->cursor_on);
#endif
	if (dinfo->cursor_on) {
		if (blank)
			FUNC4(dinfo);
		else
			FUNC5(dinfo);
		dinfo->cursor_on = 1;
	}
	dinfo->cursor_blanked = blank;

	/* Set DPMS level */
	tmp = FUNC2(ADPA) & ~ADPA_DPMS_CONTROL_MASK;
	switch (blank) {
	case FB_BLANK_UNBLANK:
	case FB_BLANK_NORMAL:
		tmp |= ADPA_DPMS_D0;
		break;
	case FB_BLANK_VSYNC_SUSPEND:
		tmp |= ADPA_DPMS_D1;
		break;
	case FB_BLANK_HSYNC_SUSPEND:
		tmp |= ADPA_DPMS_D2;
		break;
	case FB_BLANK_POWERDOWN:
		tmp |= ADPA_DPMS_D3;
		break;
	}
	FUNC3(ADPA, tmp);

	return;
}