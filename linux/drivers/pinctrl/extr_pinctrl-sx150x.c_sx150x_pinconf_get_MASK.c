#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sx150x_pinctrl {int /*<<< orphan*/  gpio; TYPE_3__* data; int /*<<< orphan*/  regmap; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  reg_drain; int /*<<< orphan*/  reg_clock; } ;
struct TYPE_5__ {TYPE_1__ x789; } ;
struct TYPE_6__ {TYPE_2__ pri; int /*<<< orphan*/  model; int /*<<< orphan*/  reg_pullup; int /*<<< orphan*/  reg_pulldn; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_PULL_DOWN 132 
#define  PIN_CONFIG_BIAS_PULL_UP 131 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 130 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 129 
#define  PIN_CONFIG_OUTPUT 128 
 int /*<<< orphan*/  SX150X_789 ; 
 unsigned long FUNC1 (unsigned int,int) ; 
 unsigned int FUNC2 (unsigned long) ; 
 struct sx150x_pinctrl* FUNC3 (struct pinctrl_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC7 (struct sx150x_pinctrl*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctldev, unsigned int pin,
			      unsigned long *config)
{
	struct sx150x_pinctrl *pctl = FUNC3(pctldev);
	unsigned int param = FUNC2(*config);
	int ret;
	u32 arg;
	unsigned int data;

	if (FUNC7(pctl, pin)) {
		switch (param) {
		case PIN_CONFIG_DRIVE_PUSH_PULL:
		case PIN_CONFIG_OUTPUT:
			ret = FUNC4(pctl->regmap,
					  pctl->data->pri.x789.reg_clock,
					  &data);
			if (ret < 0)
				return ret;

			if (param == PIN_CONFIG_DRIVE_PUSH_PULL)
				arg = (data & 0x1f) ? 1 : 0;
			else {
				if ((data & 0x1f) == 0x1f)
					arg = 1;
				else if ((data & 0x1f) == 0x10)
					arg = 0;
				else
					return -EINVAL;
			}

			break;
		default:
			return -ENOTSUPP;
		}

		goto out;
	}

	switch (param) {
	case PIN_CONFIG_BIAS_PULL_DOWN:
		ret = FUNC4(pctl->regmap,
				  pctl->data->reg_pulldn,
				  &data);
		data &= FUNC0(pin);

		if (ret < 0)
			return ret;

		if (!ret)
			return -EINVAL;

		arg = 1;
		break;

	case PIN_CONFIG_BIAS_PULL_UP:
		ret = FUNC4(pctl->regmap,
				  pctl->data->reg_pullup,
				  &data);
		data &= FUNC0(pin);

		if (ret < 0)
			return ret;

		if (!ret)
			return -EINVAL;

		arg = 1;
		break;

	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		if (pctl->data->model != SX150X_789)
			return -ENOTSUPP;

		ret = FUNC4(pctl->regmap,
				  pctl->data->pri.x789.reg_drain,
				  &data);
		data &= FUNC0(pin);

		if (ret < 0)
			return ret;

		if (!data)
			return -EINVAL;

		arg = 1;
		break;

	case PIN_CONFIG_DRIVE_PUSH_PULL:
		if (pctl->data->model != SX150X_789)
			arg = true;
		else {
			ret = FUNC4(pctl->regmap,
					  pctl->data->pri.x789.reg_drain,
					  &data);
			data &= FUNC0(pin);

			if (ret < 0)
				return ret;

			if (data)
				return -EINVAL;

			arg = 1;
		}
		break;

	case PIN_CONFIG_OUTPUT:
		ret = FUNC6(&pctl->gpio, pin);
		if (ret < 0)
			return ret;

		if (ret)
			return -EINVAL;

		ret = FUNC5(&pctl->gpio, pin);
		if (ret < 0)
			return ret;

		arg = ret;
		break;

	default:
		return -ENOTSUPP;
	}

out:
	*config = FUNC1(param, arg);

	return 0;
}