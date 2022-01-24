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
struct wm8505fb_info {scalar_t__ regbase; } ;
struct TYPE_2__ {int left_margin; int xres; int right_margin; int hsync_len; int upper_margin; int yres; int lower_margin; int vsync_len; } ;
struct fb_info {TYPE_1__ var; } ;

/* Variables and functions */
 scalar_t__ WMT_GOVR_TG ; 
 scalar_t__ WMT_GOVR_TIMING_H_ALL ; 
 scalar_t__ WMT_GOVR_TIMING_H_END ; 
 scalar_t__ WMT_GOVR_TIMING_H_START ; 
 scalar_t__ WMT_GOVR_TIMING_H_SYNC ; 
 scalar_t__ WMT_GOVR_TIMING_V_ALL ; 
 scalar_t__ WMT_GOVR_TIMING_V_END ; 
 scalar_t__ WMT_GOVR_TIMING_V_START ; 
 scalar_t__ WMT_GOVR_TIMING_V_SYNC ; 
 struct wm8505fb_info* FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct fb_info *info)
{
	struct wm8505fb_info *fbi = FUNC0(info);

	int h_start = info->var.left_margin;
	int h_end = h_start + info->var.xres;
	int h_all = h_end + info->var.right_margin;
	int h_sync = info->var.hsync_len;

	int v_start = info->var.upper_margin;
	int v_end = v_start + info->var.yres;
	int v_all = v_end + info->var.lower_margin;
	int v_sync = info->var.vsync_len;

	FUNC1(0, fbi->regbase + WMT_GOVR_TG);

	FUNC1(h_start, fbi->regbase + WMT_GOVR_TIMING_H_START);
	FUNC1(h_end,   fbi->regbase + WMT_GOVR_TIMING_H_END);
	FUNC1(h_all,   fbi->regbase + WMT_GOVR_TIMING_H_ALL);
	FUNC1(h_sync,  fbi->regbase + WMT_GOVR_TIMING_H_SYNC);

	FUNC1(v_start, fbi->regbase + WMT_GOVR_TIMING_V_START);
	FUNC1(v_end,   fbi->regbase + WMT_GOVR_TIMING_V_END);
	FUNC1(v_all,   fbi->regbase + WMT_GOVR_TIMING_V_ALL);
	FUNC1(v_sync,  fbi->regbase + WMT_GOVR_TIMING_V_SYNC);

	FUNC1(1, fbi->regbase + WMT_GOVR_TG);

	return 0;
}