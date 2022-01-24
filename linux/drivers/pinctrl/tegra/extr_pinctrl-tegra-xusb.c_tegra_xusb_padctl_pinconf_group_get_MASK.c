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
struct tegra_xusb_padctl_lane {int /*<<< orphan*/  iddq; int /*<<< orphan*/  offset; } ;
struct tegra_xusb_padctl {int /*<<< orphan*/  dev; TYPE_1__* soc; } ;
struct pinctrl_dev {int dummy; } ;
typedef  enum tegra_xusb_padctl_param { ____Placeholder_tegra_xusb_padctl_param } tegra_xusb_padctl_param ;
struct TYPE_2__ {struct tegra_xusb_padctl_lane* lanes; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOTSUPP ; 
#define  TEGRA_XUSB_PADCTL_IDDQ 128 
 unsigned long FUNC1 (int,int) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct tegra_xusb_padctl*,int /*<<< orphan*/ ) ; 
 struct tegra_xusb_padctl* FUNC5 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pinctrl,
					       unsigned int group,
					       unsigned long *config)
{
	struct tegra_xusb_padctl *padctl = FUNC5(pinctrl);
	const struct tegra_xusb_padctl_lane *lane;
	enum tegra_xusb_padctl_param param;
	u32 value;

	param = FUNC2(*config);
	lane = &padctl->soc->lanes[group];

	switch (param) {
	case TEGRA_XUSB_PADCTL_IDDQ:
		/* lanes with iddq == 0 don't support this parameter */
		if (lane->iddq == 0)
			return -EINVAL;

		value = FUNC4(padctl, lane->offset);

		if (value & FUNC0(lane->iddq))
			value = 0;
		else
			value = 1;

		*config = FUNC1(param, value);
		break;

	default:
		FUNC3(padctl->dev, "invalid configuration parameter: %04x\n",
			param);
		return -ENOTSUPP;
	}

	return 0;
}