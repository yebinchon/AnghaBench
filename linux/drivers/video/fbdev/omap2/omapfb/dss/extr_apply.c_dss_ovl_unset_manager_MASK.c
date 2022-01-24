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
struct ovl_priv_data {scalar_t__ extra_info_dirty; scalar_t__ enabled; } ;
struct omap_overlay {int /*<<< orphan*/  list; int /*<<< orphan*/ * manager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  apply_lock ; 
 int /*<<< orphan*/  data_lock ; 
 struct ovl_priv_data* FUNC1 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct omap_overlay *ovl)
{
	struct ovl_priv_data *op = FUNC1(ovl);
	unsigned long flags;
	int r;

	FUNC3(&apply_lock);

	if (!ovl->manager) {
		FUNC0("failed to detach overlay: manager not set\n");
		r = -EINVAL;
		goto err;
	}

	FUNC6(&data_lock, flags);

	if (op->enabled) {
		FUNC7(&data_lock, flags);
		FUNC0("overlay has to be disabled to unset the manager\n");
		r = -EINVAL;
		goto err;
	}

	FUNC7(&data_lock, flags);

	/* wait for pending extra_info updates to ensure the ovl is disabled */
	FUNC8();

	/*
	 * For a manual update display, there is no guarantee that the overlay
	 * is really disabled in HW, we may need an extra update from this
	 * manager before the configurations can go in. Return an error if the
	 * overlay needed an update from the manager.
	 *
	 * TODO: Instead of returning an error, try to do a dummy manager update
	 * here to disable the overlay in hardware. Use the *GATED fields in
	 * the DISPC_CONFIG registers to do a dummy update.
	 */
	FUNC6(&data_lock, flags);

	if (FUNC5(ovl) && op->extra_info_dirty) {
		FUNC7(&data_lock, flags);
		FUNC0("need an update to change the manager\n");
		r = -EINVAL;
		goto err;
	}

	ovl->manager = NULL;
	FUNC2(&ovl->list);

	FUNC7(&data_lock, flags);

	FUNC4(&apply_lock);

	return 0;
err:
	FUNC4(&apply_lock);
	return r;
}