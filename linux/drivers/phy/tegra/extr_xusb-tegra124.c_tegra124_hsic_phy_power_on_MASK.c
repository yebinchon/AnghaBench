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
struct tegra_xusb_hsic_pad {int /*<<< orphan*/  supply; } ;
struct tegra_xusb_hsic_lane {int strobe_trim; int tx_rtune_n; int tx_rtune_p; int tx_rslew_n; int tx_rslew_p; int rx_strobe_trim; int rx_data_trim; scalar_t__ auto_term; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWN_MASK ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWN_SHIFT ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWP_MASK ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWP_SHIFT ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEN_MASK ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEN_SHIFT ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEP_MASK ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEP_SHIFT ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_AUTO_TERM_EN ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_PD_RX ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_PD_TRX ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_PD_TX ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_PD_ZI ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_RPD_DATA ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_RPD_STROBE ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_RPU_DATA ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_RPU_STROBE ; 
 int XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_MASK ; 
 int XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_SHIFT ; 
 int XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_MASK ; 
 int XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_SHIFT ; 
 int /*<<< orphan*/  XUSB_PADCTL_HSIC_STRB_TRIM_CONTROL ; 
 int FUNC3 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_xusb_padctl*,int,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_lane* FUNC5 (struct phy*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct tegra_xusb_hsic_lane* FUNC7 (struct tegra_xusb_lane*) ; 
 struct tegra_xusb_hsic_pad* FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC9(struct phy *phy)
{
	struct tegra_xusb_lane *lane = FUNC5(phy);
	struct tegra_xusb_hsic_lane *hsic = FUNC7(lane);
	struct tegra_xusb_hsic_pad *pad = FUNC8(lane->pad);
	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
	unsigned int index = lane->index;
	u32 value;
	int err;

	err = FUNC6(pad->supply);
	if (err)
		return err;

	FUNC4(padctl, hsic->strobe_trim,
		      XUSB_PADCTL_HSIC_STRB_TRIM_CONTROL);

	value = FUNC3(padctl, FUNC1(index));

	if (hsic->auto_term)
		value |= XUSB_PADCTL_HSIC_PAD_CTL1_AUTO_TERM_EN;
	else
		value &= ~XUSB_PADCTL_HSIC_PAD_CTL1_AUTO_TERM_EN;

	FUNC4(padctl, value, FUNC1(index));

	value = FUNC3(padctl, FUNC0(index));
	value &= ~((XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEN_MASK <<
		    XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEN_SHIFT) |
		   (XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEP_MASK <<
		    XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEP_SHIFT) |
		   (XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWN_MASK <<
		    XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWN_SHIFT) |
		   (XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWP_MASK <<
		    XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWP_SHIFT));
	value |= (hsic->tx_rtune_n <<
		  XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEN_SHIFT) |
		(hsic->tx_rtune_p <<
		  XUSB_PADCTL_HSIC_PAD_CTL0_TX_RTUNEP_SHIFT) |
		(hsic->tx_rslew_n <<
		 XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWN_SHIFT) |
		(hsic->tx_rslew_p <<
		 XUSB_PADCTL_HSIC_PAD_CTL0_TX_RSLEWP_SHIFT);
	FUNC4(padctl, value, FUNC0(index));

	value = FUNC3(padctl, FUNC2(index));
	value &= ~((XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_MASK <<
		    XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_SHIFT) |
		   (XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_MASK <<
		    XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_SHIFT));
	value |= (hsic->rx_strobe_trim <<
		  XUSB_PADCTL_HSIC_PAD_CTL2_RX_STROBE_TRIM_SHIFT) |
		(hsic->rx_data_trim <<
		 XUSB_PADCTL_HSIC_PAD_CTL2_RX_DATA_TRIM_SHIFT);
	FUNC4(padctl, value, FUNC2(index));

	value = FUNC3(padctl, FUNC1(index));
	value &= ~(XUSB_PADCTL_HSIC_PAD_CTL1_RPD_STROBE |
		   XUSB_PADCTL_HSIC_PAD_CTL1_RPU_DATA |
		   XUSB_PADCTL_HSIC_PAD_CTL1_PD_RX |
		   XUSB_PADCTL_HSIC_PAD_CTL1_PD_ZI |
		   XUSB_PADCTL_HSIC_PAD_CTL1_PD_TRX |
		   XUSB_PADCTL_HSIC_PAD_CTL1_PD_TX);
	value |= XUSB_PADCTL_HSIC_PAD_CTL1_RPD_DATA |
		 XUSB_PADCTL_HSIC_PAD_CTL1_RPU_STROBE;
	FUNC4(padctl, value, FUNC1(index));

	return 0;
}