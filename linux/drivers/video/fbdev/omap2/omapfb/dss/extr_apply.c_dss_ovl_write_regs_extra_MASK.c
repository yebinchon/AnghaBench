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
struct ovl_priv_data {int extra_info_dirty; int shadow_extra_info_dirty; int /*<<< orphan*/  fifo_high; int /*<<< orphan*/  fifo_low; int /*<<< orphan*/  enabled; } ;
struct omap_overlay {int /*<<< orphan*/  manager; int /*<<< orphan*/  id; } ;
struct mgr_priv_data {scalar_t__ updating; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mgr_priv_data* FUNC3 (int /*<<< orphan*/ ) ; 
 struct ovl_priv_data* FUNC4 (struct omap_overlay*) ; 

__attribute__((used)) static void FUNC5(struct omap_overlay *ovl)
{
	struct ovl_priv_data *op = FUNC4(ovl);
	struct mgr_priv_data *mp;

	FUNC0("writing ovl %d regs extra\n", ovl->id);

	if (!op->extra_info_dirty)
		return;

	/* note: write also when op->enabled == false, so that the ovl gets
	 * disabled */

	FUNC1(ovl->id, op->enabled);
	FUNC2(ovl->id, op->fifo_low, op->fifo_high);

	mp = FUNC3(ovl->manager);

	op->extra_info_dirty = false;
	if (mp->updating)
		op->shadow_extra_info_dirty = true;
}