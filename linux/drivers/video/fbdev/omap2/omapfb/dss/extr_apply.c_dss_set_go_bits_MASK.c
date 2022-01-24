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
struct omap_overlay_manager {int /*<<< orphan*/  id; } ;
struct mgr_priv_data {int busy; int /*<<< orphan*/  enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ dss_data ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct mgr_priv_data* FUNC2 (struct omap_overlay_manager*) ; 
 scalar_t__ FUNC3 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_overlay_manager*) ; 
 scalar_t__ FUNC5 () ; 
 int FUNC6 () ; 
 struct omap_overlay_manager* FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void)
{
	const int num_mgrs = FUNC6();
	int i;

	for (i = 0; i < num_mgrs; ++i) {
		struct omap_overlay_manager *mgr;
		struct mgr_priv_data *mp;

		mgr = FUNC7(i);
		mp = FUNC2(mgr);

		if (!mp->enabled || FUNC3(mgr) || mp->busy)
			continue;

		if (!FUNC4(mgr))
			continue;

		mp->busy = true;

		if (!dss_data.irq_enabled && FUNC5())
			FUNC1();

		FUNC0(mgr->id);
	}

}