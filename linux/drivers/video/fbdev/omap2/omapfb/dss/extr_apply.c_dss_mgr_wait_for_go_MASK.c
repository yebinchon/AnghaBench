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
typedef  int /*<<< orphan*/  u32 ;
struct omap_overlay_manager {int /*<<< orphan*/  id; } ;
struct mgr_priv_data {int info_dirty; int shadow_info_dirty; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  data_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct mgr_priv_data* FUNC4 (struct omap_overlay_manager*) ; 
 scalar_t__ FUNC5 (struct omap_overlay_manager*) ; 
 unsigned long FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct omap_overlay_manager *mgr)
{
	unsigned long timeout = FUNC6(500);
	struct mgr_priv_data *mp = FUNC4(mgr);
	u32 irq;
	unsigned long flags;
	int r;
	int i;

	FUNC8(&data_lock, flags);

	if (FUNC5(mgr)) {
		FUNC9(&data_lock, flags);
		return 0;
	}

	if (!mp->enabled) {
		FUNC9(&data_lock, flags);
		return 0;
	}

	FUNC9(&data_lock, flags);

	r = FUNC2();
	if (r)
		return r;

	irq = FUNC1(mgr->id);

	i = 0;
	while (1) {
		bool shadow_dirty, dirty;

		FUNC8(&data_lock, flags);
		dirty = mp->info_dirty;
		shadow_dirty = mp->shadow_info_dirty;
		FUNC9(&data_lock, flags);

		if (!dirty && !shadow_dirty) {
			r = 0;
			break;
		}

		/* 4 iterations is the worst case:
		 * 1 - initial iteration, dirty = true (between VFP and VSYNC)
		 * 2 - first VSYNC, dirty = true
		 * 3 - dirty = false, shadow_dirty = true
		 * 4 - shadow_dirty = false */
		if (i++ == 3) {
			FUNC0("mgr(%d)->wait_for_go() not finishing\n",
					mgr->id);
			r = 0;
			break;
		}

		r = FUNC7(irq, timeout);
		if (r == -ERESTARTSYS)
			break;

		if (r) {
			FUNC0("mgr(%d)->wait_for_go() timeout\n", mgr->id);
			break;
		}
	}

	FUNC3();

	return r;
}