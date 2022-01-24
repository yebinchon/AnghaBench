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
struct omap_overlay_info {int /*<<< orphan*/  color_mode; } ;
struct ovl_priv_data {int enabled; int info_dirty; int shadow_info_dirty; struct omap_overlay_info info; } ;
struct omap_overlay {int /*<<< orphan*/  id; int /*<<< orphan*/  manager; } ;
struct mgr_priv_data {scalar_t__ updating; int /*<<< orphan*/  timings; int /*<<< orphan*/  lcd_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct omap_overlay_info*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgr_priv_data* FUNC5 (int /*<<< orphan*/ ) ; 
 struct ovl_priv_data* FUNC6 (struct omap_overlay*) ; 

__attribute__((used)) static void FUNC7(struct omap_overlay *ovl)
{
	struct ovl_priv_data *op = FUNC6(ovl);
	struct omap_overlay_info *oi;
	bool replication;
	struct mgr_priv_data *mp;
	int r;

	FUNC0("writing ovl %d regs\n", ovl->id);

	if (!op->enabled || !op->info_dirty)
		return;

	oi = &op->info;

	mp = FUNC5(ovl->manager);

	replication = FUNC4(mp->lcd_config, oi->color_mode);

	r = FUNC3(ovl->id, oi, replication, &mp->timings, false);
	if (r) {
		/*
		 * We can't do much here, as this function can be called from
		 * vsync interrupt.
		 */
		FUNC1("dispc_ovl_setup failed for ovl %d\n", ovl->id);

		/* This will leave fifo configurations in a nonoptimal state */
		op->enabled = false;
		FUNC2(ovl->id, false);
		return;
	}

	op->info_dirty = false;
	if (mp->updating)
		op->shadow_info_dirty = true;
}