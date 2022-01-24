#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sh_pfc_pinctrl {struct sh_pfc* pfc; } ;
struct sh_pfc {int /*<<< orphan*/  lock; TYPE_2__* info; } ;
struct pinctrl_dev {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {unsigned int (* get_bias ) (struct sh_pfc*,unsigned int) ;int (* pin_to_pocctrl ) (struct sh_pfc*,unsigned int,int*) ;} ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 132 
#define  PIN_CONFIG_BIAS_PULL_DOWN 131 
#define  PIN_CONFIG_BIAS_PULL_UP 130 
#define  PIN_CONFIG_DRIVE_STRENGTH 129 
#define  PIN_CONFIG_POWER_SOURCE 128 
 int /*<<< orphan*/  FUNC1 (int,char*,unsigned int) ; 
 unsigned long FUNC2 (int,unsigned int) ; 
 int FUNC3 (unsigned long) ; 
 struct sh_pfc_pinctrl* FUNC4 (struct pinctrl_dev*) ; 
 int FUNC5 (struct sh_pfc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct sh_pfc*,unsigned int,int) ; 
 int FUNC7 (struct sh_pfc*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC10 (struct sh_pfc*,unsigned int) ; 
 int FUNC11 (struct sh_pfc*,unsigned int,int*) ; 

__attribute__((used)) static int FUNC12(struct pinctrl_dev *pctldev, unsigned _pin,
			      unsigned long *config)
{
	struct sh_pfc_pinctrl *pmx = FUNC4(pctldev);
	struct sh_pfc *pfc = pmx->pfc;
	enum pin_config_param param = FUNC3(*config);
	unsigned long flags;
	unsigned int arg;

	if (!FUNC6(pfc, _pin, param))
		return -ENOTSUPP;

	switch (param) {
	case PIN_CONFIG_BIAS_DISABLE:
	case PIN_CONFIG_BIAS_PULL_UP:
	case PIN_CONFIG_BIAS_PULL_DOWN: {
		unsigned int bias;

		if (!pfc->info->ops || !pfc->info->ops->get_bias)
			return -ENOTSUPP;

		FUNC8(&pfc->lock, flags);
		bias = pfc->info->ops->get_bias(pfc, _pin);
		FUNC9(&pfc->lock, flags);

		if (bias != param)
			return -EINVAL;

		arg = 0;
		break;
	}

	case PIN_CONFIG_DRIVE_STRENGTH: {
		int ret;

		ret = FUNC5(pfc, _pin);
		if (ret < 0)
			return ret;

		arg = ret;
		break;
	}

	case PIN_CONFIG_POWER_SOURCE: {
		u32 pocctrl, val;
		int bit;

		if (!pfc->info->ops || !pfc->info->ops->pin_to_pocctrl)
			return -ENOTSUPP;

		bit = pfc->info->ops->pin_to_pocctrl(pfc, _pin, &pocctrl);
		if (FUNC1(bit < 0, "invalid pin %#x", _pin))
			return bit;

		FUNC8(&pfc->lock, flags);
		val = FUNC7(pfc, pocctrl);
		FUNC9(&pfc->lock, flags);

		arg = (val & FUNC0(bit)) ? 3300 : 1800;
		break;
	}

	default:
		return -ENOTSUPP;
	}

	*config = FUNC2(param, arg);
	return 0;
}