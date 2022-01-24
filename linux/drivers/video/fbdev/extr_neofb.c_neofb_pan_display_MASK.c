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
struct vgastate {int /*<<< orphan*/  vgabase; } ;
struct neofb_par {struct vgastate state; } ;
struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct TYPE_2__ {int xres_virtual; int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; struct neofb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vgastate*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct fb_var_screeninfo *var,
			     struct fb_info *info)
{
	struct neofb_par *par = info->par;
	struct vgastate *state = &par->state;
	int oldExtCRTDispAddr;
	int Base;

	FUNC0("neofb_update_start");

	Base = (var->yoffset * info->var.xres_virtual + var->xoffset) >> 2;
	Base *= (info->var.bits_per_pixel + 7) / 8;

	FUNC2();

	/*
	 * These are the generic starting address registers.
	 */
	FUNC4(state->vgabase, 0x0C, (Base & 0x00FF00) >> 8);
	FUNC4(state->vgabase, 0x0D, (Base & 0x00FF));

	/*
	 * Make sure we don't clobber some other bits that might already
	 * have been set. NOTE: NM2200 has a writable bit 3, but it shouldn't
	 * be needed.
	 */
	oldExtCRTDispAddr = FUNC3(NULL, 0x0E);
	FUNC5(state->vgabase, 0x0E, (((Base >> 16) & 0x0f) | (oldExtCRTDispAddr & 0xf0)));

	FUNC1(state);

	return 0;
}