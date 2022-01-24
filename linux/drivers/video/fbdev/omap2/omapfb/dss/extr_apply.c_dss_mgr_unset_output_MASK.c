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
struct omap_overlay_manager {TYPE_1__* output; } ;
struct mgr_priv_data {scalar_t__ enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/ * manager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  apply_lock ; 
 int /*<<< orphan*/  data_lock ; 
 struct mgr_priv_data* FUNC1 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct omap_overlay_manager *mgr)
{
	int r;
	struct mgr_priv_data *mp = FUNC1(mgr);
	unsigned long flags;

	FUNC2(&apply_lock);

	if (!mgr->output) {
		FUNC0("failed to unset output, output not set\n");
		r = -EINVAL;
		goto err;
	}

	FUNC4(&data_lock, flags);

	if (mp->enabled) {
		FUNC0("output can't be unset when manager is enabled\n");
		r = -EINVAL;
		goto err1;
	}

	FUNC5(&data_lock, flags);

	mgr->output->manager = NULL;
	mgr->output = NULL;

	FUNC3(&apply_lock);

	return 0;
err1:
	FUNC5(&data_lock, flags);
err:
	FUNC3(&apply_lock);

	return r;
}