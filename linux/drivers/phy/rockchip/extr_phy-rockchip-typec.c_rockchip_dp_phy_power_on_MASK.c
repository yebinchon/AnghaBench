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
typedef  int u32 ;
struct rockchip_usb3phy_port_cfg {int /*<<< orphan*/  uphy_dp_sel; } ;
struct rockchip_typec_phy {int mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; scalar_t__ base; struct rockchip_usb3phy_port_cfg* port_cfgs; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int DP_MODE_A0 ; 
 int DP_MODE_A2 ; 
 scalar_t__ DP_MODE_CTL ; 
 int /*<<< orphan*/  DP_MODE_ENTER_A0 ; 
 int /*<<< orphan*/  DP_MODE_ENTER_A2 ; 
 int ENODEV ; 
 int MODE_DFP_DP ; 
 int MODE_DISCONNECT ; 
 int /*<<< orphan*/  PHY_MODE_SET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct rockchip_typec_phy* FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct rockchip_typec_phy*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  readl ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rockchip_typec_phy*) ; 
 int FUNC7 (struct rockchip_typec_phy*) ; 
 int /*<<< orphan*/  FUNC8 (struct rockchip_typec_phy*) ; 
 int FUNC9 (struct rockchip_typec_phy*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct phy *phy)
{
	struct rockchip_typec_phy *tcphy = FUNC3(phy);
	const struct rockchip_usb3phy_port_cfg *cfg = tcphy->port_cfgs;
	int new_mode, ret = 0;
	u32 val;

	FUNC1(&tcphy->lock);

	new_mode = FUNC7(tcphy);
	if (new_mode < 0) {
		ret = new_mode;
		goto unlock_ret;
	}

	if (!(new_mode & MODE_DFP_DP)) {
		ret = -ENODEV;
		goto unlock_ret;
	}

	if (tcphy->mode == new_mode)
		goto unlock_ret;

	/*
	 * If the PHY has been power on, but the mode is not DP only mode,
	 * re-init the PHY for setting all of 4 lanes to DP.
	 */
	if (new_mode == MODE_DFP_DP && tcphy->mode != MODE_DISCONNECT) {
		FUNC8(tcphy);
		ret = FUNC9(tcphy, new_mode);
	} else if (tcphy->mode == MODE_DISCONNECT) {
		ret = FUNC9(tcphy, new_mode);
	}
	if (ret)
		goto unlock_ret;

	FUNC4(tcphy, &cfg->uphy_dp_sel, 1);

	ret = FUNC5(readl, tcphy->base + DP_MODE_CTL,
				 val, val & DP_MODE_A2, 1000,
				 PHY_MODE_SET_TIMEOUT);
	if (ret < 0) {
		FUNC0(tcphy->dev, "failed to wait TCPHY enter A2\n");
		goto power_on_finish;
	}

	FUNC6(tcphy);

	FUNC10(DP_MODE_ENTER_A0, tcphy->base + DP_MODE_CTL);

	ret = FUNC5(readl, tcphy->base + DP_MODE_CTL,
				 val, val & DP_MODE_A0, 1000,
				 PHY_MODE_SET_TIMEOUT);
	if (ret < 0) {
		FUNC10(DP_MODE_ENTER_A2, tcphy->base + DP_MODE_CTL);
		FUNC0(tcphy->dev, "failed to wait TCPHY enter A0\n");
		goto power_on_finish;
	}

	tcphy->mode |= MODE_DFP_DP;

power_on_finish:
	if (tcphy->mode == MODE_DISCONNECT)
		FUNC8(tcphy);
unlock_ret:
	FUNC2(&tcphy->lock);
	return ret;
}