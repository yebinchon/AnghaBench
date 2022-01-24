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
struct mv_usb_platform_data {int /*<<< orphan*/  (* phy_deinit ) (int /*<<< orphan*/ ) ;} ;
struct mv_u3d {scalar_t__ active; int /*<<< orphan*/  clk; int /*<<< orphan*/  phy_regs; int /*<<< orphan*/  dev; scalar_t__ clock_gating; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct mv_usb_platform_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mv_u3d *u3d)
{
	struct mv_usb_platform_data *pdata = FUNC2(u3d->dev);
	if (u3d->clock_gating && u3d->active) {
		FUNC1(u3d->dev, "disable u3d\n");
		if (pdata->phy_deinit)
			pdata->phy_deinit(u3d->phy_regs);
		FUNC0(u3d->clk);
		u3d->active = 0;
	}
}