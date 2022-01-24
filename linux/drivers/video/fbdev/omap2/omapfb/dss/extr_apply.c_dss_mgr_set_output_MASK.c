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
struct omap_overlay_manager {int supported_outputs; struct omap_dss_device* output; int /*<<< orphan*/  name; } ;
struct omap_dss_device {int id; struct omap_overlay_manager* manager; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  apply_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct omap_overlay_manager *mgr,
		struct omap_dss_device *output)
{
	int r;

	FUNC1(&apply_lock);

	if (mgr->output) {
		FUNC0("manager %s is already connected to an output\n",
			mgr->name);
		r = -EINVAL;
		goto err;
	}

	if ((mgr->supported_outputs & output->id) == 0) {
		FUNC0("output does not support manager %s\n",
			mgr->name);
		r = -EINVAL;
		goto err;
	}

	output->manager = mgr;
	mgr->output = output;

	FUNC2(&apply_lock);

	return 0;
err:
	FUNC2(&apply_lock);
	return r;
}