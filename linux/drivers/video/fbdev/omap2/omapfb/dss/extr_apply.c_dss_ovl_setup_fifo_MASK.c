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
typedef  int /*<<< orphan*/  u32 ;
struct ovl_priv_data {int /*<<< orphan*/  enabling; int /*<<< orphan*/  enabled; } ;
struct omap_overlay {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_overlay*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ovl_priv_data* FUNC2 (struct omap_overlay*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_overlay*) ; 

__attribute__((used)) static void FUNC4(struct omap_overlay *ovl)
{
	struct ovl_priv_data *op = FUNC2(ovl);
	u32 fifo_low, fifo_high;
	bool use_fifo_merge = false;

	if (!op->enabled && !op->enabling)
		return;

	FUNC0(ovl->id, &fifo_low, &fifo_high,
			use_fifo_merge, FUNC3(ovl));

	FUNC1(ovl, fifo_low, fifo_high);
}