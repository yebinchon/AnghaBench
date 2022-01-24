#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  clk_gating_workq; int /*<<< orphan*/  gate_work; int /*<<< orphan*/  ungate_work; int /*<<< orphan*/  enable_attr; int /*<<< orphan*/  delay_attr; } ;
struct ufs_hba {TYPE_1__ clk_gating; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ufs_hba*) ; 

__attribute__((used)) static void FUNC5(struct ufs_hba *hba)
{
	if (!FUNC4(hba))
		return;
	FUNC3(hba->dev, &hba->clk_gating.delay_attr);
	FUNC3(hba->dev, &hba->clk_gating.enable_attr);
	FUNC1(&hba->clk_gating.ungate_work);
	FUNC0(&hba->clk_gating.gate_work);
	FUNC2(hba->clk_gating.clk_gating_workq);
}