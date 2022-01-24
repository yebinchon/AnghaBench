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
struct ovl_priv_data {scalar_t__ enabled; } ;
struct omap_overlay_manager {int /*<<< orphan*/  overlays; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct omap_overlay {int /*<<< orphan*/  list; struct omap_overlay_manager* manager; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  apply_lock ; 
 int /*<<< orphan*/  data_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct ovl_priv_data* FUNC4 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct omap_overlay *ovl,
		struct omap_overlay_manager *mgr)
{
	struct ovl_priv_data *op = FUNC4(ovl);
	unsigned long flags;
	int r;

	if (!mgr)
		return -EINVAL;

	FUNC6(&apply_lock);

	if (ovl->manager) {
		FUNC0("overlay '%s' already has a manager '%s'\n",
				ovl->name, ovl->manager->name);
		r = -EINVAL;
		goto err;
	}

	r = FUNC2();
	if (r)
		goto err;

	FUNC8(&data_lock, flags);

	if (op->enabled) {
		FUNC9(&data_lock, flags);
		FUNC0("overlay has to be disabled to change the manager\n");
		r = -EINVAL;
		goto err1;
	}

	FUNC1(ovl->id, mgr->id);

	ovl->manager = mgr;
	FUNC5(&ovl->list, &mgr->overlays);

	FUNC9(&data_lock, flags);

	FUNC3();

	FUNC7(&apply_lock);

	return 0;

err1:
	FUNC3();
err:
	FUNC7(&apply_lock);
	return r;
}