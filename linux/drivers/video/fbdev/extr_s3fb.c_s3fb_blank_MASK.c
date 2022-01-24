#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  vgabase; } ;
struct s3fb_info {TYPE_1__ state; } ;
struct fb_info {struct s3fb_info* par; } ;

/* Variables and functions */
#define  FB_BLANK_HSYNC_SUSPEND 132 
#define  FB_BLANK_NORMAL 131 
#define  FB_BLANK_POWERDOWN 130 
#define  FB_BLANK_UNBLANK 129 
#define  FB_BLANK_VSYNC_SUSPEND 128 
 int /*<<< orphan*/  FUNC0 (struct fb_info*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC3(int blank_mode, struct fb_info *info)
{
	struct s3fb_info *par = info->par;

	switch (blank_mode) {
	case FB_BLANK_UNBLANK:
		FUNC0(info, "unblank\n");
		FUNC1(par->state.vgabase, 0x56, 0x00, 0x06);
		FUNC2(par->state.vgabase, 0x01, 0x00, 0x20);
		break;
	case FB_BLANK_NORMAL:
		FUNC0(info, "blank\n");
		FUNC1(par->state.vgabase, 0x56, 0x00, 0x06);
		FUNC2(par->state.vgabase, 0x01, 0x20, 0x20);
		break;
	case FB_BLANK_HSYNC_SUSPEND:
		FUNC0(info, "hsync\n");
		FUNC1(par->state.vgabase, 0x56, 0x02, 0x06);
		FUNC2(par->state.vgabase, 0x01, 0x20, 0x20);
		break;
	case FB_BLANK_VSYNC_SUSPEND:
		FUNC0(info, "vsync\n");
		FUNC1(par->state.vgabase, 0x56, 0x04, 0x06);
		FUNC2(par->state.vgabase, 0x01, 0x20, 0x20);
		break;
	case FB_BLANK_POWERDOWN:
		FUNC0(info, "sync down\n");
		FUNC1(par->state.vgabase, 0x56, 0x06, 0x06);
		FUNC2(par->state.vgabase, 0x01, 0x20, 0x20);
		break;
	}

	return 0;
}