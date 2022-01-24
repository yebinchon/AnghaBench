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
struct mgr_priv_data {int updating; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  data_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct omap_overlay_manager*) ; 
 TYPE_1__ dss_data ; 
 int /*<<< orphan*/  FUNC4 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct mgr_priv_data* FUNC7 (struct omap_overlay_manager*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct omap_overlay_manager *mgr)
{
	struct mgr_priv_data *mp = FUNC7(mgr);
	unsigned long flags;
	int r;

	FUNC9(&data_lock, flags);

	FUNC1(mp->updating);

	r = FUNC3(mgr);
	if (r) {
		FUNC0("cannot start manual update: illegal configuration\n");
		FUNC10(&data_lock, flags);
		return;
	}

	FUNC4(mgr);
	FUNC5(mgr);

	mp->updating = true;

	if (!dss_data.irq_enabled && FUNC8())
		FUNC6();

	FUNC2(mgr->id);

	FUNC10(&data_lock, flags);
}