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
struct omap_video_timings {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  venc_lock; struct omap_video_timings timings; scalar_t__ wss_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct omap_video_timings*,struct omap_video_timings*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ venc ; 

__attribute__((used)) static void FUNC5(struct omap_dss_device *dssdev,
		struct omap_video_timings *timings)
{
	FUNC0("venc_set_timings\n");

	FUNC3(&venc.venc_lock);

	/* Reset WSS data when the TV standard changes. */
	if (FUNC2(&venc.timings, timings, sizeof(*timings)))
		venc.wss_data = 0;

	venc.timings = *timings;

	FUNC1(13500000);

	FUNC4(&venc.venc_lock);
}