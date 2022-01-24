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
struct dpi_data {int /*<<< orphan*/  lock; struct omap_video_timings timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct dpi_data* FUNC1 (struct omap_dss_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct omap_dss_device *dssdev,
		struct omap_video_timings *timings)
{
	struct dpi_data *dpi = FUNC1(dssdev);

	FUNC0("dpi_set_timings\n");

	FUNC2(&dpi->lock);

	dpi->timings = *timings;

	FUNC3(&dpi->lock);
}