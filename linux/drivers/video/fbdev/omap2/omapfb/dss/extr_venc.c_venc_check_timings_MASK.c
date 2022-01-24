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
struct omap_video_timings {int dummy; } ;
struct omap_dss_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct omap_video_timings*,int) ; 
 int /*<<< orphan*/  omap_dss_ntsc_timings ; 
 int /*<<< orphan*/  omap_dss_pal_timings ; 

__attribute__((used)) static int FUNC2(struct omap_dss_device *dssdev,
		struct omap_video_timings *timings)
{
	FUNC0("venc_check_timings\n");

	if (FUNC1(&omap_dss_pal_timings, timings, sizeof(*timings)) == 0)
		return 0;

	if (FUNC1(&omap_dss_ntsc_timings, timings, sizeof(*timings)) == 0)
		return 0;

	return -EINVAL;
}