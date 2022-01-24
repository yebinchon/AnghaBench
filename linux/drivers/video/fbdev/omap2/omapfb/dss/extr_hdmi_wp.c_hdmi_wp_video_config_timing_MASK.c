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
typedef  int /*<<< orphan*/  u32 ;
struct omap_video_timings {int /*<<< orphan*/  vsw; int /*<<< orphan*/  vfp; int /*<<< orphan*/  vbp; int /*<<< orphan*/  hsw; int /*<<< orphan*/  hfp; int /*<<< orphan*/  hbp; } ;
struct hdmi_wp_data {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  HDMI_WP_VIDEO_TIMING_H ; 
 int /*<<< orphan*/  HDMI_WP_VIDEO_TIMING_V ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct hdmi_wp_data *wp,
		struct omap_video_timings *timings)
{
	u32 timing_h = 0;
	u32 timing_v = 0;

	FUNC0("Enter hdmi_wp_video_config_timing\n");

	timing_h |= FUNC1(timings->hbp, 31, 20);
	timing_h |= FUNC1(timings->hfp, 19, 8);
	timing_h |= FUNC1(timings->hsw, 7, 0);
	FUNC2(wp->base, HDMI_WP_VIDEO_TIMING_H, timing_h);

	timing_v |= FUNC1(timings->vbp, 31, 20);
	timing_v |= FUNC1(timings->vfp, 19, 8);
	timing_v |= FUNC1(timings->vsw, 7, 0);
	FUNC2(wp->base, HDMI_WP_VIDEO_TIMING_V, timing_v);
}