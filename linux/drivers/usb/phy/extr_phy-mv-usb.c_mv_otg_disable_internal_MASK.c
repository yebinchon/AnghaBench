#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mv_otg {scalar_t__ active; int /*<<< orphan*/  phy_regs; TYPE_2__* pdata; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* phy_deinit ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv_otg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mv_otg *mvotg)
{
	if (mvotg->active) {
		FUNC0(&mvotg->pdev->dev, "otg disabled\n");
		if (mvotg->pdata->phy_deinit)
			mvotg->pdata->phy_deinit(mvotg->phy_regs);
		FUNC1(mvotg);
		mvotg->active = 0;
	}
}