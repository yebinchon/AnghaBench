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
struct omap_video_timings {scalar_t__ vsync_level; scalar_t__ hsync_level; int interlace; } ;
struct hdmi_wp_data {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  HDMI_WP_VIDEO_CFG ; 
 scalar_t__ OMAPDSS_SIG_ACTIVE_HIGH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct hdmi_wp_data *wp,
		struct omap_video_timings *timings)
{
	u32 r;
	bool vsync_pol, hsync_pol;
	FUNC0("Enter hdmi_wp_video_config_interface\n");

	vsync_pol = timings->vsync_level == OMAPDSS_SIG_ACTIVE_HIGH;
	hsync_pol = timings->hsync_level == OMAPDSS_SIG_ACTIVE_HIGH;

	r = FUNC2(wp->base, HDMI_WP_VIDEO_CFG);
	r = FUNC1(r, vsync_pol, 7, 7);
	r = FUNC1(r, hsync_pol, 6, 6);
	r = FUNC1(r, timings->interlace, 3, 3);
	r = FUNC1(r, 1, 1, 0); /* HDMI_TIMING_MASTER_24BIT */
	FUNC3(wp->base, HDMI_WP_VIDEO_CFG, r);
}