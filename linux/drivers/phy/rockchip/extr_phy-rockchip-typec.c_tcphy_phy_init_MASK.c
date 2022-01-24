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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct rockchip_usb3phy_port_cfg {int /*<<< orphan*/  typec_conn_dir; } ;
struct rockchip_typec_phy {int /*<<< orphan*/  clk_core; int /*<<< orphan*/  clk_ref; int /*<<< orphan*/  tcphy_rst; int /*<<< orphan*/  uphy_rst; int /*<<< orphan*/  pipe_rst; int /*<<< orphan*/  dev; scalar_t__ base; scalar_t__ flip; struct rockchip_usb3phy_port_cfg* port_cfgs; } ;

/* Variables and functions */
 int CMN_READY ; 
 scalar_t__ DP_MODE_CTL ; 
 int /*<<< orphan*/  DP_MODE_ENTER_A2 ; 
 int ETIMEDOUT ; 
 scalar_t__ MODE_DFP_DP ; 
 int /*<<< orphan*/  PHY_MODE_SET_TIMEOUT ; 
 int /*<<< orphan*/  PIN_ASSIGN_C_E ; 
 int /*<<< orphan*/  PIN_ASSIGN_D_F ; 
 scalar_t__ PMA_CMN_CTRL1 ; 
 scalar_t__ PMA_LANE_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rockchip_typec_phy*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  readl ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rockchip_typec_phy*) ; 
 int /*<<< orphan*/  FUNC8 (struct rockchip_typec_phy*) ; 
 int /*<<< orphan*/  FUNC9 (struct rockchip_typec_phy*) ; 
 int /*<<< orphan*/  FUNC10 (struct rockchip_typec_phy*) ; 
 int /*<<< orphan*/  FUNC11 (struct rockchip_typec_phy*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct rockchip_typec_phy*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rockchip_typec_phy*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct rockchip_typec_phy *tcphy, u8 mode)
{
	const struct rockchip_usb3phy_port_cfg *cfg = tcphy->port_cfgs;
	int ret, i;
	u32 val;

	ret = FUNC1(tcphy->clk_core);
	if (ret) {
		FUNC2(tcphy->dev, "Failed to prepare_enable core clock\n");
		return ret;
	}

	ret = FUNC1(tcphy->clk_ref);
	if (ret) {
		FUNC2(tcphy->dev, "Failed to prepare_enable ref clock\n");
		goto err_clk_core;
	}

	FUNC6(tcphy->tcphy_rst);

	FUNC3(tcphy, &cfg->typec_conn_dir, tcphy->flip);
	FUNC10(tcphy);

	FUNC7(tcphy);

	if (mode == MODE_DFP_DP) {
		FUNC8(tcphy);
		for (i = 0; i < 4; i++)
			FUNC11(tcphy, i);

		FUNC14(PIN_ASSIGN_C_E, tcphy->base + PMA_LANE_CFG);
	} else {
		FUNC9(tcphy);
		FUNC8(tcphy);
		if (tcphy->flip) {
			FUNC13(tcphy, 3);
			FUNC12(tcphy, 2);
			FUNC11(tcphy, 0);
			FUNC11(tcphy, 1);
		} else {
			FUNC13(tcphy, 0);
			FUNC12(tcphy, 1);
			FUNC11(tcphy, 2);
			FUNC11(tcphy, 3);
		}

		FUNC14(PIN_ASSIGN_D_F, tcphy->base + PMA_LANE_CFG);
	}

	FUNC14(DP_MODE_ENTER_A2, tcphy->base + DP_MODE_CTL);

	FUNC6(tcphy->uphy_rst);

	ret = FUNC4(readl, tcphy->base + PMA_CMN_CTRL1,
				 val, val & CMN_READY, 10,
				 PHY_MODE_SET_TIMEOUT);
	if (ret < 0) {
		FUNC2(tcphy->dev, "wait pma ready timeout\n");
		ret = -ETIMEDOUT;
		goto err_wait_pma;
	}

	FUNC6(tcphy->pipe_rst);

	return 0;

err_wait_pma:
	FUNC5(tcphy->uphy_rst);
	FUNC5(tcphy->tcphy_rst);
	FUNC0(tcphy->clk_ref);
err_clk_core:
	FUNC0(tcphy->clk_core);
	return ret;
}