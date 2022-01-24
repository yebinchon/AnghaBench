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
struct TYPE_2__ {int /*<<< orphan*/  delay_ms; int /*<<< orphan*/  gate_work; int /*<<< orphan*/  clk_gating_workq; int /*<<< orphan*/  state; scalar_t__ is_suspended; scalar_t__ active_reqs; } ;
struct ufs_hba {scalar_t__ ufshcd_state; TYPE_1__ clk_gating; int /*<<< orphan*/  dev; scalar_t__ uic_async_done; scalar_t__ active_uic_cmd; scalar_t__ outstanding_tasks; scalar_t__ lrb_in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_CLKS_OFF ; 
 scalar_t__ UFSHCD_STATE_OPERATIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ufs_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct ufs_hba*) ; 

__attribute__((used)) static void FUNC6(struct ufs_hba *hba)
{
	if (!FUNC5(hba))
		return;

	hba->clk_gating.active_reqs--;

	if (hba->clk_gating.active_reqs || hba->clk_gating.is_suspended
		|| hba->ufshcd_state != UFSHCD_STATE_OPERATIONAL
		|| hba->lrb_in_use || hba->outstanding_tasks
		|| hba->active_uic_cmd || hba->uic_async_done
		|| FUNC4(hba))
		return;

	hba->clk_gating.state = REQ_CLKS_OFF;
	FUNC3(FUNC0(hba->dev), hba->clk_gating.state);
	FUNC2(hba->clk_gating.clk_gating_workq,
			   &hba->clk_gating.gate_work,
			   FUNC1(hba->clk_gating.delay_ms));
}