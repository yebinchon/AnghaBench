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
struct mgr_priv_data {int enabled; int updating; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  apply_lock ; 
 int /*<<< orphan*/  data_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct omap_overlay_manager*) ; 
 TYPE_1__ dss_data ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct mgr_priv_data* FUNC7 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC14(struct omap_overlay_manager *mgr)
{
	struct mgr_priv_data *mp = FUNC7(mgr);
	unsigned long flags;
	int r;

	FUNC9(&apply_lock);

	if (mp->enabled)
		goto out;

	FUNC12(&data_lock, flags);

	mp->enabled = true;

	r = FUNC2(mgr);
	if (r) {
		FUNC0("failed to enable manager %d: check_settings failed\n",
				mgr->id);
		goto err;
	}

	FUNC5();

	FUNC6();
	FUNC4();

	if (!FUNC8(mgr))
		mp->updating = true;

	if (!dss_data.irq_enabled && FUNC11())
		FUNC3();

	FUNC13(&data_lock, flags);

	if (!FUNC8(mgr))
		FUNC1(mgr->id);

out:
	FUNC10(&apply_lock);

	return 0;

err:
	mp->enabled = false;
	FUNC13(&data_lock, flags);
	FUNC10(&apply_lock);
	return r;
}