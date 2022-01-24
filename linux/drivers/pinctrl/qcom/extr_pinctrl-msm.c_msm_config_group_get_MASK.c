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
struct pinctrl_dev {int dummy; } ;
struct msm_pingroup {int /*<<< orphan*/  in_bit; } ;
struct msm_pinctrl {TYPE_1__* soc; } ;
struct TYPE_2__ {int /*<<< orphan*/  pull_no_keeper; struct msm_pingroup* groups; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOTSUPP ; 
 unsigned int MSM_KEEPER ; 
 unsigned int MSM_NO_PULL ; 
 unsigned int MSM_PULL_DOWN ; 
 unsigned int MSM_PULL_UP ; 
 unsigned int MSM_PULL_UP_NO_KEEPER ; 
#define  PIN_CONFIG_BIAS_BUS_HOLD 134 
#define  PIN_CONFIG_BIAS_DISABLE 133 
#define  PIN_CONFIG_BIAS_PULL_DOWN 132 
#define  PIN_CONFIG_BIAS_PULL_UP 131 
#define  PIN_CONFIG_DRIVE_STRENGTH 130 
#define  PIN_CONFIG_INPUT_ENABLE 129 
#define  PIN_CONFIG_OUTPUT 128 
 int FUNC1 (struct msm_pinctrl*,struct msm_pingroup const*,unsigned int,unsigned int*,unsigned int*) ; 
 unsigned int FUNC2 (struct msm_pinctrl*,struct msm_pingroup const*) ; 
 unsigned int FUNC3 (struct msm_pinctrl*,struct msm_pingroup const*) ; 
 unsigned int FUNC4 (unsigned int) ; 
 unsigned long FUNC5 (unsigned int,unsigned int) ; 
 unsigned int FUNC6 (unsigned long) ; 
 struct msm_pinctrl* FUNC7 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctldev,
				unsigned int group,
				unsigned long *config)
{
	const struct msm_pingroup *g;
	struct msm_pinctrl *pctrl = FUNC7(pctldev);
	unsigned param = FUNC6(*config);
	unsigned mask;
	unsigned arg;
	unsigned bit;
	int ret;
	u32 val;

	g = &pctrl->soc->groups[group];

	ret = FUNC1(pctrl, g, param, &mask, &bit);
	if (ret < 0)
		return ret;

	val = FUNC2(pctrl, g);
	arg = (val >> bit) & mask;

	/* Convert register value to pinconf value */
	switch (param) {
	case PIN_CONFIG_BIAS_DISABLE:
		if (arg != MSM_NO_PULL)
			return -EINVAL;
		arg = 1;
		break;
	case PIN_CONFIG_BIAS_PULL_DOWN:
		if (arg != MSM_PULL_DOWN)
			return -EINVAL;
		arg = 1;
		break;
	case PIN_CONFIG_BIAS_BUS_HOLD:
		if (pctrl->soc->pull_no_keeper)
			return -ENOTSUPP;

		if (arg != MSM_KEEPER)
			return -EINVAL;
		arg = 1;
		break;
	case PIN_CONFIG_BIAS_PULL_UP:
		if (pctrl->soc->pull_no_keeper)
			arg = arg == MSM_PULL_UP_NO_KEEPER;
		else
			arg = arg == MSM_PULL_UP;
		if (!arg)
			return -EINVAL;
		break;
	case PIN_CONFIG_DRIVE_STRENGTH:
		arg = FUNC4(arg);
		break;
	case PIN_CONFIG_OUTPUT:
		/* Pin is not output */
		if (!arg)
			return -EINVAL;

		val = FUNC3(pctrl, g);
		arg = !!(val & FUNC0(g->in_bit));
		break;
	case PIN_CONFIG_INPUT_ENABLE:
		/* Pin is output */
		if (arg)
			return -EINVAL;
		arg = 1;
		break;
	default:
		return -ENOTSUPP;
	}

	*config = FUNC5(param, arg);

	return 0;
}