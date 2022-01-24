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
struct qmp_phy_cfg {scalar_t__ has_lane_rst; int /*<<< orphan*/  pwrdn_ctrl; int /*<<< orphan*/  start_ctrl; int /*<<< orphan*/ * regs; int /*<<< orphan*/  no_pcs_sw_reset; } ;
struct qmp_phy {int /*<<< orphan*/  lane_rst; int /*<<< orphan*/  pcs; int /*<<< orphan*/  pipe_clk; struct qcom_qmp* qmp; } ;
struct qcom_qmp {int phy_initialized; struct qmp_phy_cfg* cfg; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QPHY_POWER_DOWN_CONTROL ; 
 size_t QPHY_START_CTRL ; 
 size_t QPHY_SW_RESET ; 
 int /*<<< orphan*/  SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct qmp_phy* FUNC1 (struct phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct qcom_qmp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct phy *phy)
{
	struct qmp_phy *qphy = FUNC1(phy);
	struct qcom_qmp *qmp = qphy->qmp;
	const struct qmp_phy_cfg *cfg = qmp->cfg;

	FUNC0(qphy->pipe_clk);

	/* PHY reset */
	if (!cfg->no_pcs_sw_reset)
		FUNC4(qphy->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);

	/* stop SerDes and Phy-Coding-Sublayer */
	FUNC3(qphy->pcs, cfg->regs[QPHY_START_CTRL], cfg->start_ctrl);

	/* Put PHY into POWER DOWN state: active low */
	FUNC3(qphy->pcs, QPHY_POWER_DOWN_CONTROL, cfg->pwrdn_ctrl);

	if (cfg->has_lane_rst)
		FUNC5(qphy->lane_rst);

	FUNC2(qmp);

	qmp->phy_initialized = false;

	return 0;
}