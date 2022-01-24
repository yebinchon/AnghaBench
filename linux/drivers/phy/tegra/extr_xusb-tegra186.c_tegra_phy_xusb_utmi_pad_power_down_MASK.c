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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_xusb_padctl {int dummy; } ;
struct tegra_xusb_lane {unsigned int index; TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB2_OTG_PD ; 
 int /*<<< orphan*/  USB2_OTG_PD_DR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_lane* FUNC4 (struct phy*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_xusb_padctl*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct phy *phy)
{
	struct tegra_xusb_lane *lane = FUNC4(phy);
	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
	unsigned int index = lane->index;
	u32 value;

	if (!phy)
		return;

	value = FUNC2(padctl, FUNC0(index));
	value |= USB2_OTG_PD;
	FUNC3(padctl, value, FUNC0(index));

	value = FUNC2(padctl, FUNC1(index));
	value |= USB2_OTG_PD_DR;
	FUNC3(padctl, value, FUNC1(index));

	FUNC6(2);

	FUNC5(padctl);
}