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
struct omap_video_timings {int /*<<< orphan*/  vbp; int /*<<< orphan*/  vfp; int /*<<< orphan*/  vsw; int /*<<< orphan*/  hbp; int /*<<< orphan*/  hfp; int /*<<< orphan*/  hsw; scalar_t__ interlace; int /*<<< orphan*/  pixelclock; int /*<<< orphan*/  y_res; int /*<<< orphan*/  x_res; } ;
typedef  enum omap_channel { ____Placeholder_omap_channel } omap_channel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

bool FUNC4(enum omap_channel channel,
		const struct omap_video_timings *timings)
{
	if (!FUNC2(timings->x_res, timings->y_res))
		return false;

	if (!FUNC1(channel, timings->pixelclock))
		return false;

	if (FUNC3(channel)) {
		/* TODO: OMAP4+ supports interlace for LCD outputs */
		if (timings->interlace)
			return false;

		if (!FUNC0(timings->hsw, timings->hfp,
				timings->hbp, timings->vsw, timings->vfp,
				timings->vbp))
			return false;
	}

	return true;
}