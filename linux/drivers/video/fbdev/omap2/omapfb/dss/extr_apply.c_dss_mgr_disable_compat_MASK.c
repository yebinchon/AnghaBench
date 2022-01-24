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
struct omap_overlay_manager {int /*<<< orphan*/  id; } ;
struct mgr_priv_data {int enabled; int updating; } ;

/* Variables and functions */
 int /*<<< orphan*/  apply_lock ; 
 int /*<<< orphan*/  data_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mgr_priv_data* FUNC1 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct omap_overlay_manager *mgr)
{
	struct mgr_priv_data *mp = FUNC1(mgr);
	unsigned long flags;

	FUNC3(&apply_lock);

	if (!mp->enabled)
		goto out;

	FUNC7();

	if (!FUNC2(mgr))
		FUNC0(mgr->id);

	FUNC5(&data_lock, flags);

	mp->updating = false;
	mp->enabled = false;

	FUNC6(&data_lock, flags);

out:
	FUNC4(&apply_lock);
}