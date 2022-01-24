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
struct tegra_xusb_padctl {scalar_t__ enable; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  XUSB_PADCTL_ELPG_PROGRAM1 ; 
 int /*<<< orphan*/  XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN ; 
 int /*<<< orphan*/  XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN_EARLY ; 
 int /*<<< orphan*/  XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_VCORE_DOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct tegra_xusb_padctl *padctl)
{
	u32 value;

	FUNC1(&padctl->lock);

	if (FUNC0(padctl->enable == 0))
		goto out;

	if (--padctl->enable > 0)
		goto out;

	value = FUNC3(padctl, XUSB_PADCTL_ELPG_PROGRAM1);
	value |= XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_VCORE_DOWN;
	FUNC4(padctl, value, XUSB_PADCTL_ELPG_PROGRAM1);

	FUNC5(100, 200);

	value = FUNC3(padctl, XUSB_PADCTL_ELPG_PROGRAM1);
	value |= XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN_EARLY;
	FUNC4(padctl, value, XUSB_PADCTL_ELPG_PROGRAM1);

	FUNC5(100, 200);

	value = FUNC3(padctl, XUSB_PADCTL_ELPG_PROGRAM1);
	value |= XUSB_PADCTL_ELPG_PROGRAM1_AUX_MUX_LP0_CLAMP_EN;
	FUNC4(padctl, value, XUSB_PADCTL_ELPG_PROGRAM1);

out:
	FUNC2(&padctl->lock);
	return 0;
}