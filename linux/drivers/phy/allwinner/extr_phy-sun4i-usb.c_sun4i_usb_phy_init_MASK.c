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
typedef  int u32 ;
struct sun4i_usb_phy_data {int phy0_init; int id_det; int vbus_det; int /*<<< orphan*/  detect; TYPE_1__* cfg; scalar_t__ base; } ;
struct sun4i_usb_phy {scalar_t__ index; scalar_t__ pmu; int /*<<< orphan*/  clk; int /*<<< orphan*/  clk2; int /*<<< orphan*/  reset; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int disc_thresh; scalar_t__ enable_pmu_unk1; scalar_t__ phyctl_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCR_DPDM_PULLUP_EN ; 
 int /*<<< orphan*/  ISCR_ID_PULLUP_EN ; 
 int PHY_CTL_SIDDQ ; 
 int PHY_CTL_VBUSVLDEXT ; 
 int /*<<< orphan*/  PHY_DISCON_TH_SEL ; 
 int /*<<< orphan*/  PHY_RES45_CAL_EN ; 
 int /*<<< orphan*/  PHY_TX_AMPLITUDE_TUNE ; 
 scalar_t__ REG_PMU_UNK1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct sun4i_usb_phy* FUNC2 (struct phy*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sun4i_usb_phy*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sun4i_usb_phy*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ sun50i_h6_phy ; 
 scalar_t__ sun8i_a83t_phy ; 
 int /*<<< orphan*/  system_wq ; 
 struct sun4i_usb_phy_data* FUNC9 (struct sun4i_usb_phy*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct phy *_phy)
{
	struct sun4i_usb_phy *phy = FUNC2(_phy);
	struct sun4i_usb_phy_data *data = FUNC9(phy);
	int ret;
	u32 val;

	ret = FUNC1(phy->clk);
	if (ret)
		return ret;

	ret = FUNC1(phy->clk2);
	if (ret) {
		FUNC0(phy->clk);
		return ret;
	}

	ret = FUNC5(phy->reset);
	if (ret) {
		FUNC0(phy->clk2);
		FUNC0(phy->clk);
		return ret;
	}

	if (data->cfg->type == sun8i_a83t_phy ||
	    data->cfg->type == sun50i_h6_phy) {
		if (phy->index == 0) {
			val = FUNC4(data->base + data->cfg->phyctl_offset);
			val |= PHY_CTL_VBUSVLDEXT;
			val &= ~PHY_CTL_SIDDQ;
			FUNC10(val, data->base + data->cfg->phyctl_offset);
		}
	} else {
		if (phy->pmu && data->cfg->enable_pmu_unk1) {
			val = FUNC4(phy->pmu + REG_PMU_UNK1);
			FUNC10(val & ~2, phy->pmu + REG_PMU_UNK1);
		}

		/* Enable USB 45 Ohm resistor calibration */
		if (phy->index == 0)
			FUNC8(phy, PHY_RES45_CAL_EN, 0x01, 1);

		/* Adjust PHY's magnitude and rate */
		FUNC8(phy, PHY_TX_AMPLITUDE_TUNE, 0x14, 5);

		/* Disconnect threshold adjustment */
		FUNC8(phy, PHY_DISCON_TH_SEL,
				    data->cfg->disc_thresh, 2);
	}

	FUNC7(phy, 1);

	if (phy->index == 0) {
		data->phy0_init = true;

		/* Enable pull-ups */
		FUNC6(_phy, 0, ISCR_DPDM_PULLUP_EN);
		FUNC6(_phy, 0, ISCR_ID_PULLUP_EN);

		/* Force ISCR and cable state updates */
		data->id_det = -1;
		data->vbus_det = -1;
		FUNC3(system_wq, &data->detect, 0);
	}

	return 0;
}