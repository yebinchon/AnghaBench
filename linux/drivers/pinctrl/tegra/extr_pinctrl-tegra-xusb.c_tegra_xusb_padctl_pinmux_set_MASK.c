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
typedef  unsigned int u32 ;
struct tegra_xusb_padctl_lane {unsigned int num_funcs; unsigned int* funcs; unsigned int mask; unsigned int shift; int /*<<< orphan*/  offset; } ;
struct tegra_xusb_padctl {TYPE_1__* soc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {struct tegra_xusb_padctl_lane* lanes; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_xusb_padctl*,unsigned int,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_padctl* FUNC2 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pinctrl,
					unsigned int function,
					unsigned int group)
{
	struct tegra_xusb_padctl *padctl = FUNC2(pinctrl);
	const struct tegra_xusb_padctl_lane *lane;
	unsigned int i;
	u32 value;

	lane = &padctl->soc->lanes[group];

	for (i = 0; i < lane->num_funcs; i++)
		if (lane->funcs[i] == function)
			break;

	if (i >= lane->num_funcs)
		return -EINVAL;

	value = FUNC0(padctl, lane->offset);
	value &= ~(lane->mask << lane->shift);
	value |= i << lane->shift;
	FUNC1(padctl, value, lane->offset);

	return 0;
}