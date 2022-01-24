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
struct omap_overlay_manager {int /*<<< orphan*/  name; } ;
struct mgr_priv_data {scalar_t__ updating; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data_lock ; 
 int /*<<< orphan*/  FUNC1 (struct omap_overlay_manager*,struct omap_video_timings const*) ; 
 struct mgr_priv_data* FUNC2 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct omap_overlay_manager *mgr,
		const struct omap_video_timings *timings)
{
	unsigned long flags;
	struct mgr_priv_data *mp = FUNC2(mgr);

	FUNC3(&data_lock, flags);

	if (mp->updating) {
		FUNC0("cannot set timings for %s: manager needs to be disabled\n",
			mgr->name);
		goto out;
	}

	FUNC1(mgr, timings);
out:
	FUNC4(&data_lock, flags);
}