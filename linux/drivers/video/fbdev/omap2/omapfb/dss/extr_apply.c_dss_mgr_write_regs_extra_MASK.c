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
struct mgr_priv_data {int extra_info_dirty; int shadow_extra_info_dirty; scalar_t__ updating; int /*<<< orphan*/  lcd_config; int /*<<< orphan*/  timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct mgr_priv_data* FUNC4 (struct omap_overlay_manager*) ; 

__attribute__((used)) static void FUNC5(struct omap_overlay_manager *mgr)
{
	struct mgr_priv_data *mp = FUNC4(mgr);

	FUNC0("writing mgr %d regs extra\n", mgr->id);

	if (!mp->extra_info_dirty)
		return;

	FUNC2(mgr->id, &mp->timings);

	/* lcd_config parameters */
	if (FUNC3(mgr->id))
		FUNC1(mgr->id, &mp->lcd_config);

	mp->extra_info_dirty = false;
	if (mp->updating)
		mp->shadow_extra_info_dirty = true;
}