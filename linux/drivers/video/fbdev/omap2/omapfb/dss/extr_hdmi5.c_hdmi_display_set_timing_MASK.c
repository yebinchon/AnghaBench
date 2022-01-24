#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct omap_video_timings {int /*<<< orphan*/  pixelclock; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_3__ {struct omap_video_timings timings; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ hdmi ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct omap_dss_device *dssdev,
		struct omap_video_timings *timings)
{
	FUNC1(&hdmi.lock);

	hdmi.cfg.timings = *timings;

	FUNC0(timings->pixelclock);

	FUNC2(&hdmi.lock);
}