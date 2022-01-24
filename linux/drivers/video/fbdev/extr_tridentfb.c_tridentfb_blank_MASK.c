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
struct tridentfb_par {scalar_t__ flatpanel; } ;
struct fb_info {struct tridentfb_par* par; } ;

/* Variables and functions */
#define  FB_BLANK_HSYNC_SUSPEND 132 
#define  FB_BLANK_NORMAL 131 
#define  FB_BLANK_POWERDOWN 130 
#define  FB_BLANK_UNBLANK 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 int /*<<< orphan*/  PowerStatus ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct tridentfb_par*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tridentfb_par*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tridentfb_par*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tridentfb_par*,int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static int FUNC5(int blank_mode, struct fb_info *info)
{
	unsigned char PMCont, DPMSCont;
	struct tridentfb_par *par = info->par;

	FUNC0("enter\n");
	if (par->flatpanel)
		return 0;
	FUNC3(par, 0x04, 0x83C8); /* Read DPMS Control */
	PMCont = FUNC2(par, 0x83C6) & 0xFC;
	DPMSCont = FUNC1(par, PowerStatus) & 0xFC;
	switch (blank_mode) {
	case FB_BLANK_UNBLANK:
		/* Screen: On, HSync: On, VSync: On */
	case FB_BLANK_NORMAL:
		/* Screen: Off, HSync: On, VSync: On */
		PMCont |= 0x03;
		DPMSCont |= 0x00;
		break;
	case FB_BLANK_HSYNC_SUSPEND:
		/* Screen: Off, HSync: Off, VSync: On */
		PMCont |= 0x02;
		DPMSCont |= 0x01;
		break;
	case FB_BLANK_VSYNC_SUSPEND:
		/* Screen: Off, HSync: On, VSync: Off */
		PMCont |= 0x02;
		DPMSCont |= 0x02;
		break;
	case FB_BLANK_POWERDOWN:
		/* Screen: Off, HSync: Off, VSync: Off */
		PMCont |= 0x00;
		DPMSCont |= 0x03;
		break;
	}

	FUNC4(par, PowerStatus, DPMSCont);
	FUNC3(par, 4, 0x83C8);
	FUNC3(par, PMCont, 0x83C6);

	FUNC0("exit\n");

	/* let fbcon do a softblank for us */
	return (blank_mode == FB_BLANK_NORMAL) ? 1 : 0;
}