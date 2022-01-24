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
 int XUSB_PADCTL_HSIC_PAD_CTL1_PD_RX ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_PD_TRX ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_PD_TX ; 
 int XUSB_PADCTL_HSIC_PAD_CTL1_PD_ZI ; 
 int FUNC1 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_xusb_padctl*,int,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_lane* FUNC3 (struct phy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct tegra_xusb_hsic_pad* FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct phy *phy)
{
	struct tegra_xusb_lane *lane = FUNC3(phy);
	struct tegra_xusb_hsic_pad *pad = FUNC5(lane->pad);
	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
	unsigned int index = lane->index;
	u32 value;

	value = FUNC1(padctl, FUNC0(index));
	value |= XUSB_PADCTL_HSIC_PAD_CTL1_PD_RX |
		 XUSB_PADCTL_HSIC_PAD_CTL1_PD_ZI |
		 XUSB_PADCTL_HSIC_PAD_CTL1_PD_TRX |
		 XUSB_PADCTL_HSIC_PAD_CTL1_PD_TX;
	FUNC2(padctl, value, FUNC0(index));

	FUNC4(pad->supply);

	return 0;
}