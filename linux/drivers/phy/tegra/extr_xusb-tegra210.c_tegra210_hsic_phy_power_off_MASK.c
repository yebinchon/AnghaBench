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
struct phy {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_DATA0 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_DATA1 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_STROBE ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_DATA0 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_DATA1 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_STROBE ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_DATA0 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_DATA1 ; 
 int XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_STROBE ; 
 int FUNC2 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_xusb_padctl*,int,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_lane* FUNC4 (struct phy*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct tegra_xusb_hsic_pad* FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct phy *phy)
{
	struct tegra_xusb_lane *lane = FUNC4(phy);
	struct tegra_xusb_hsic_pad *pad = FUNC6(lane->pad);
	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
	unsigned int index = lane->index;
	u32 value;

	value = FUNC2(padctl, FUNC0(index));
	value |= XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_DATA0 |
		 XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_DATA1 |
		 XUSB_PADCTL_HSIC_PAD_CTL0_PD_RX_STROBE |
		 XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_DATA0 |
		 XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_DATA1 |
		 XUSB_PADCTL_HSIC_PAD_CTL0_PD_ZI_STROBE |
		 XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_DATA0 |
		 XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_DATA1 |
		 XUSB_PADCTL_HSIC_PAD_CTL0_PD_TX_STROBE;
	FUNC3(padctl, value, FUNC1(index));

	FUNC5(pad->supply);

	return 0;
}