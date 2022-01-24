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
struct omap_video_timings {unsigned int x_res; unsigned int y_res; unsigned int hsw; unsigned int hfp; unsigned int hbp; unsigned int vsw; unsigned int vfp; unsigned int vbp; unsigned int pixelclock; scalar_t__ interlace; int /*<<< orphan*/  sync_pclk_edge; int /*<<< orphan*/  de_level; int /*<<< orphan*/  data_pclk_edge; int /*<<< orphan*/  hsync_level; int /*<<< orphan*/  vsync_level; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct omap_video_timings*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(enum omap_channel channel,
		const struct omap_video_timings *timings)
{
	unsigned xtot, ytot;
	unsigned long ht, vt;
	struct omap_video_timings t = *timings;

	FUNC1("channel %d xres %u yres %u\n", channel, t.x_res, t.y_res);

	if (!FUNC4(channel, &t)) {
		FUNC0();
		return;
	}

	if (FUNC5(channel)) {
		FUNC2(channel, t.hsw, t.hfp, t.hbp, t.vsw,
				t.vfp, t.vbp, t.vsync_level, t.hsync_level,
				t.data_pclk_edge, t.de_level, t.sync_pclk_edge);

		xtot = t.x_res + t.hfp + t.hsw + t.hbp;
		ytot = t.y_res + t.vfp + t.vsw + t.vbp;

		ht = timings->pixelclock / xtot;
		vt = timings->pixelclock / xtot / ytot;

		FUNC1("pck %u\n", timings->pixelclock);
		FUNC1("hsw %d hfp %d hbp %d vsw %d vfp %d vbp %d\n",
			t.hsw, t.hfp, t.hbp, t.vsw, t.vfp, t.vbp);
		FUNC1("vsync_level %d hsync_level %d data_pclk_edge %d de_level %d sync_pclk_edge %d\n",
			t.vsync_level, t.hsync_level, t.data_pclk_edge,
			t.de_level, t.sync_pclk_edge);

		FUNC1("hsync %luHz, vsync %luHz\n", ht, vt);
	} else {
		if (t.interlace)
			t.y_res /= 2;
	}

	FUNC3(channel, t.x_res, t.y_res);
}