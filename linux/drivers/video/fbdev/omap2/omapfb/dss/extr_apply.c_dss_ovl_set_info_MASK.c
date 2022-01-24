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
struct omap_overlay_info {int dummy; } ;
struct ovl_priv_data {int user_info_dirty; struct omap_overlay_info user_info; } ;
struct omap_overlay {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  data_lock ; 
 int FUNC0 (struct omap_overlay*,struct omap_overlay_info*) ; 
 struct ovl_priv_data* FUNC1 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct omap_overlay *ovl,
		struct omap_overlay_info *info)
{
	struct ovl_priv_data *op = FUNC1(ovl);
	unsigned long flags;
	int r;

	r = FUNC0(ovl, info);
	if (r)
		return r;

	FUNC2(&data_lock, flags);

	op->user_info = *info;
	op->user_info_dirty = true;

	FUNC3(&data_lock, flags);

	return 0;
}