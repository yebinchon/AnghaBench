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
struct tegra_xusb_padctl {int /*<<< orphan*/  lock; } ;
struct tegra_xusb_lane {int /*<<< orphan*/  index; TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl* padctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  XUSB_PADCTL_USB3_PAD_MUX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_lane* FUNC5 (struct phy*) ; 
 int FUNC6 (struct tegra_xusb_padctl*,int) ; 

__attribute__((used)) static int FUNC7(struct phy *phy)
{
	struct tegra_xusb_lane *lane = FUNC5(phy);
	struct tegra_xusb_padctl *padctl = lane->pad->padctl;
	u32 value;
	int err;

	FUNC1(&padctl->lock);

	err = FUNC6(padctl, false);
	if (err < 0)
		goto unlock;

	value = FUNC3(padctl, XUSB_PADCTL_USB3_PAD_MUX);
	value |= FUNC0(lane->index);
	FUNC4(padctl, value, XUSB_PADCTL_USB3_PAD_MUX);

unlock:
	FUNC2(&padctl->lock);
	return err;
}