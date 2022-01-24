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
typedef  int u32 ;
struct tegra_pmc {int dummy; } ;
struct tegra_io_pad_soc {int /*<<< orphan*/  id; } ;
struct pinctrl_dev {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EINVAL ; 
#define  PIN_CONFIG_LOW_POWER_MODE 129 
#define  PIN_CONFIG_POWER_SOURCE 128 
 unsigned long FUNC0 (int,int) ; 
 int FUNC1 (unsigned long) ; 
 struct tegra_pmc* FUNC2 (struct pinctrl_dev*) ; 
 struct tegra_io_pad_soc* FUNC3 (struct tegra_pmc*,unsigned int) ; 
 int FUNC4 (struct tegra_pmc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tegra_pmc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctl_dev,
				    unsigned int pin, unsigned long *config)
{
	enum pin_config_param param = FUNC1(*config);
	struct tegra_pmc *pmc = FUNC2(pctl_dev);
	const struct tegra_io_pad_soc *pad;
	int ret;
	u32 arg;

	pad = FUNC3(pmc, pin);
	if (!pad)
		return -EINVAL;

	switch (param) {
	case PIN_CONFIG_POWER_SOURCE:
		ret = FUNC4(pmc, pad->id);
		if (ret < 0)
			return ret;

		arg = ret;
		break;

	case PIN_CONFIG_LOW_POWER_MODE:
		ret = FUNC5(pmc, pad->id);
		if (ret < 0)
			return ret;

		arg = !ret;
		break;

	default:
		return -EINVAL;
	}

	*config = FUNC0(param, arg);

	return 0;
}