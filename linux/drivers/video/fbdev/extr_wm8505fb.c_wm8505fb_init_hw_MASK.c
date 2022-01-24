#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int smem_start; } ;
struct TYPE_5__ {TYPE_1__ fix; } ;
struct wm8505fb_info {scalar_t__ regbase; TYPE_2__ fb; } ;
struct TYPE_6__ {int xres; int xres_virtual; } ;
struct fb_info {TYPE_3__ var; } ;

/* Variables and functions */
 scalar_t__ WMT_GOVR_COLORSPACE ; 
 scalar_t__ WMT_GOVR_COLORSPACE1 ; 
 scalar_t__ WMT_GOVR_DVO_SET ; 
 scalar_t__ WMT_GOVR_FBADDR ; 
 scalar_t__ WMT_GOVR_FBADDR1 ; 
 scalar_t__ WMT_GOVR_FHI ; 
 scalar_t__ WMT_GOVR_MIF_ENABLE ; 
 scalar_t__ WMT_GOVR_REG_UPDATE ; 
 scalar_t__ WMT_GOVR_XRES ; 
 scalar_t__ WMT_GOVR_XRES_VIRTUAL ; 
 struct wm8505fb_info* FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct fb_info *info)
{
	struct wm8505fb_info *fbi = FUNC0(info);

	int i;

	/* I know the purpose only of few registers, so clear unknown */
	for (i = 0; i < 0x200; i += 4)
		FUNC1(0, fbi->regbase + i);

	/* Set frame buffer address */
	FUNC1(fbi->fb.fix.smem_start, fbi->regbase + WMT_GOVR_FBADDR);
	FUNC1(fbi->fb.fix.smem_start, fbi->regbase + WMT_GOVR_FBADDR1);

	/*
	 * Set in-memory picture format to RGB
	 * 0x31C sets the correct color mode (RGB565) for WM8650
	 * Bit 8+9 (0x300) are ignored on WM8505 as reserved
	 */
	FUNC1(0x31c,		       fbi->regbase + WMT_GOVR_COLORSPACE);
	FUNC1(1,		       fbi->regbase + WMT_GOVR_COLORSPACE1);

	/* Virtual buffer size */
	FUNC1(info->var.xres,	       fbi->regbase + WMT_GOVR_XRES);
	FUNC1(info->var.xres_virtual, fbi->regbase + WMT_GOVR_XRES_VIRTUAL);

	/* black magic ;) */
	FUNC1(0xf,		       fbi->regbase + WMT_GOVR_FHI);
	FUNC1(4,		       fbi->regbase + WMT_GOVR_DVO_SET);
	FUNC1(1,		       fbi->regbase + WMT_GOVR_MIF_ENABLE);
	FUNC1(1,		       fbi->regbase + WMT_GOVR_REG_UPDATE);

	return 0;
}