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
typedef  int /*<<< orphan*/  u32 ;
struct tegra_xusb_padctl {int /*<<< orphan*/  lock; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  XUSB_PADCTL_ELPG_PROGRAM1 ; 
 int /*<<< orphan*/  XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN ; 
 int /*<<< orphan*/  XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN_EARLY ; 
 int /*<<< orphan*/  XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_VCORE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct tegra_xusb_padctl *padctl)
{
	u32 value;

	FUNC0(&padctl->lock);

	if (padctl->enable++ > 0)
		goto out;

	value = FUNC2(padctl, XUSB_PADCTL_ELPG_PROGRAM1);
	value &= ~XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN;
	FUNC3(padctl, value, XUSB_PADCTL_ELPG_PROGRAM1);

	FUNC4(100, 200);

	value = FUNC2(padctl, XUSB_PADCTL_ELPG_PROGRAM1);
	value &= ~XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN_EARLY;
	FUNC3(padctl, value, XUSB_PADCTL_ELPG_PROGRAM1);

	FUNC4(100, 200);

	value = FUNC2(padctl, XUSB_PADCTL_ELPG_PROGRAM1);
	value &= ~XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_VCORE_DOWN;
	FUNC3(padctl, value, XUSB_PADCTL_ELPG_PROGRAM1);

out:
	FUNC1(&padctl->lock);
	return 0;
}