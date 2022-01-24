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
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_lane {unsigned int index; TYPE_1__* pad; } ;
struct tegra_xusb_hsic_pad {int /*<<< orphan*/  supply; int /*<<< orphan*/  clk; } ;
struct tegra_xusb_hsic_lane {int strobe_trim; int tx_rtune_p; int rx_strobe_trim; int rx_data_trim; } ;
struct tegra210_xusb_padctl {int dummy; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_DATA0 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_DATA1 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_STROBE ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_DATA0 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_DATA1 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_STROBE ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_DATA0 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_DATA1 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_STROBE ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA0 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA1 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_RPD_STROBE ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA0 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA1 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_RPU_STROBE ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_TX_RTUNEP_MASK ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_TX_RTUNEP_SHIFT ; 
 int XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_MASK ; 
 int XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_SHIFT ; 
 int XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_MASK ; 
 int XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_SHIFT ; 
 int /*<<< orphan*/  XUSB_PADCTL_HSIC_PAD_TRK_CTL ; 
 int XUSB_PADCTL_HSIC_PAD_TRK_CTL_PD_TRK ; 
 int XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_MASK ; 
 int XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_SHIFT ; 
 int XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_VAL ; 
 int XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_MASK ; 
 int XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_SHIFT ; 
 int XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_VAL ; 
 int /*<<< orphan*/  XUSB_PADCTL_HSIC_STRB_TRIM_CONTROL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_xusb_padctl*,int,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_lane* FUNC7 (struct phy*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct tegra_xusb_hsic_lane* FUNC10 (struct tegra_xusb_lane*) ; 
 struct tegra_xusb_hsic_pad* FUNC11 (TYPE_1__*) ; 
 struct tegra210_xusb_padctl* FUNC12 (struct tegra_xusb_padctl*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct phy *phy)
{
	struct tegra_xusb_lane *lane = FUNC7(phy);
	struct tegra_xusb_hsic_lane *hsic = FUNC10(lane);
	struct tegra_xusb_hsic_pad *pad = FUNC11(lane->pad);
	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
	struct tegra210_xusb_padctl *priv;
	unsigned int index = lane->index;
	u32 value;
	int err;

	priv = FUNC12(padctl);

	err = FUNC9(pad->supply);
	if (err)
		return err;

	FUNC6(padctl, hsic->strobe_trim,
		      XUSB_PADCTL_HSIC_STRB_TRIM_CONTROL);

	value = FUNC5(padctl, FUNC1(index));
	value &= ~(XUSB_PADCTL_HSIC_PAD_CTL1_TX_RTUNEP_MASK <<
		   XUSB_PADCTL_HSIC_PAD_CTL1_TX_RTUNEP_SHIFT);
	value |= (hsic->tx_rtune_p <<
		  XUSB_PADCTL_HSIC_PAD_CTL1_TX_RTUNEP_SHIFT);
	FUNC6(padctl, value, FUNC1(index));

	value = FUNC5(padctl, FUNC2(index));
	value &= ~((XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_MASK <<
		    XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_SHIFT) |
		   (XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_MASK <<
		    XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_SHIFT));
	value |= (hsic->rx_strobe_trim <<
		  XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_SHIFT) |
		 (hsic->rx_data_trim <<
		  XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_SHIFT);
	FUNC6(padctl, value, FUNC2(index));

	value = FUNC5(padctl, FUNC0(index));
	value &= ~(XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA0 |
		   XUSB_PADCTL_HSIC_PAD_CTL0_RPU_DATA1 |
		   XUSB_PADCTL_HSIC_PAD_CTL0_RPU_STROBE |
		   XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_DATA0 |
		   XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_DATA1 |
		   XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_STROBE |
		   XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_DATA0 |
		   XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_DATA1 |
		   XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_STROBE |
		   XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_DATA0 |
		   XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_DATA1 |
		   XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_STROBE);
	value |= XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA0 |
		 XUSB_PADCTL_HSIC_PAD_CTL0_RPD_DATA1 |
		 XUSB_PADCTL_HSIC_PAD_CTL0_RPD_STROBE;
	FUNC6(padctl, value, FUNC0(index));

	err = FUNC4(pad->clk);
	if (err)
		goto disable;

	value = FUNC5(padctl, XUSB_PADCTL_HSIC_PAD_TRK_CTL);
	value &= ~((XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_MASK <<
		    XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_SHIFT) |
		   (XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_MASK <<
		    XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_SHIFT));
	value |= (XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_VAL <<
		  XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_START_TIMER_SHIFT) |
		 (XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_VAL <<
		  XUSB_PADCTL_HSIC_PAD_TRK_CTL_TRK_DONE_RESET_TIMER_SHIFT);
	FUNC6(padctl, value, XUSB_PADCTL_HSIC_PAD_TRK_CTL);

	FUNC13(1);

	value = FUNC5(padctl, XUSB_PADCTL_HSIC_PAD_TRK_CTL);
	value &= ~XUSB_PADCTL_HSIC_PAD_TRK_CTL_PD_TRK;
	FUNC6(padctl, value, XUSB_PADCTL_HSIC_PAD_TRK_CTL);

	FUNC13(50);

	FUNC3(pad->clk);

	return 0;

disable:
	FUNC8(pad->supply);
	return err;
}