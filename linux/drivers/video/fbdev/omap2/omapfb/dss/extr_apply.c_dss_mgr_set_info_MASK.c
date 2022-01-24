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
struct omap_overlay_manager_info {int dummy; } ;
struct omap_overlay_manager {int dummy; } ;
struct mgr_priv_data {int user_info_dirty; struct omap_overlay_manager_info user_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  data_lock ; 
 int FUNC0 (struct omap_overlay_manager*,struct omap_overlay_manager_info*) ; 
 struct mgr_priv_data* FUNC1 (struct omap_overlay_manager*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct omap_overlay_manager *mgr,
		struct omap_overlay_manager_info *info)
{
	struct mgr_priv_data *mp = FUNC1(mgr);
	unsigned long flags;
	int r;

	r = FUNC0(mgr, info);
	if (r)
		return r;

	FUNC2(&data_lock, flags);

	mp->user_info = *info;
	mp->user_info_dirty = true;

	FUNC3(&data_lock, flags);

	return 0;
}