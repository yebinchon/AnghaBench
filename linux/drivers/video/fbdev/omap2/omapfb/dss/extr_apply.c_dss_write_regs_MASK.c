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
struct omap_overlay_manager {int /*<<< orphan*/  name; } ;
struct mgr_priv_data {scalar_t__ busy; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_overlay_manager*) ; 
 struct mgr_priv_data* FUNC4 (struct omap_overlay_manager*) ; 
 scalar_t__ FUNC5 (struct omap_overlay_manager*) ; 
 int FUNC6 () ; 
 struct omap_overlay_manager* FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(void)
{
	const int num_mgrs = FUNC6();
	int i;

	for (i = 0; i < num_mgrs; ++i) {
		struct omap_overlay_manager *mgr;
		struct mgr_priv_data *mp;
		int r;

		mgr = FUNC7(i);
		mp = FUNC4(mgr);

		if (!mp->enabled || FUNC5(mgr) || mp->busy)
			continue;

		r = FUNC1(mgr);
		if (r) {
			FUNC0("cannot write registers for manager %s: "
					"illegal configuration\n", mgr->name);
			continue;
		}

		FUNC2(mgr);
		FUNC3(mgr);
	}
}