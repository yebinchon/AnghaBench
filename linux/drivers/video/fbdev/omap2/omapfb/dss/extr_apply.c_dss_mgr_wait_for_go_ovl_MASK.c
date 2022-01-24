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
typedef  int /*<<< orphan*/  u32 ;
struct ovl_priv_data {int info_dirty; int shadow_info_dirty; } ;
struct omap_overlay {int /*<<< orphan*/  id; TYPE_1__* manager; } ;
struct mgr_priv_data {int /*<<< orphan*/  enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  data_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct mgr_priv_data* FUNC4 (TYPE_1__*) ; 
 struct ovl_priv_data* FUNC5 (struct omap_overlay*) ; 
 unsigned long FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC8 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct omap_overlay *ovl)
{
	unsigned long timeout = FUNC6(500);
	struct ovl_priv_data *op;
	struct mgr_priv_data *mp;
	u32 irq;
	unsigned long flags;
	int r;
	int i;

	if (!ovl->manager)
		return 0;

	mp = FUNC4(ovl->manager);

	FUNC9(&data_lock, flags);

	if (FUNC8(ovl)) {
		FUNC10(&data_lock, flags);
		return 0;
	}

	if (!mp->enabled) {
		FUNC10(&data_lock, flags);
		return 0;
	}

	FUNC10(&data_lock, flags);

	r = FUNC2();
	if (r)
		return r;

	irq = FUNC1(ovl->manager->id);

	op = FUNC5(ovl);
	i = 0;
	while (1) {
		bool shadow_dirty, dirty;

		FUNC9(&data_lock, flags);
		dirty = op->info_dirty;
		shadow_dirty = op->shadow_info_dirty;
		FUNC10(&data_lock, flags);

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
			FUNC0("ovl(%d)->wait_for_go() not finishing\n",
					ovl->id);
			r = 0;
			break;
		}

		r = FUNC7(irq, timeout);
		if (r == -ERESTARTSYS)
			break;

		if (r) {
			FUNC0("ovl(%d)->wait_for_go() timeout\n", ovl->id);
			break;
		}
	}

	FUNC3();

	return r;
}