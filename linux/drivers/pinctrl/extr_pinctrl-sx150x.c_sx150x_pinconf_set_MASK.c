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
typedef  int /*<<< orphan*/  u32 ;
struct sx150x_pinctrl {int /*<<< orphan*/  gpio; TYPE_3__* data; int /*<<< orphan*/  regmap; } ;
struct pinctrl_dev {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_4__ {int /*<<< orphan*/  reg_drain; } ;
struct TYPE_5__ {TYPE_1__ x789; } ;
struct TYPE_6__ {TYPE_2__ pri; int /*<<< orphan*/  model; int /*<<< orphan*/  reg_pulldn; int /*<<< orphan*/  reg_pullup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 134 
#define  PIN_CONFIG_BIAS_PULL_DOWN 133 
#define  PIN_CONFIG_BIAS_PULL_PIN_DEFAULT 132 
#define  PIN_CONFIG_BIAS_PULL_UP 131 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 130 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 129 
#define  PIN_CONFIG_OUTPUT 128 
 int /*<<< orphan*/  SX150X_789 ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 struct sx150x_pinctrl* FUNC3 (struct pinctrl_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sx150x_pinctrl*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct pinctrl_dev *pctldev, unsigned int pin,
			      unsigned long *configs, unsigned int num_configs)
{
	struct sx150x_pinctrl *pctl = FUNC3(pctldev);
	enum pin_config_param param;
	u32 arg;
	int i;
	int ret;

	for (i = 0; i < num_configs; i++) {
		param = FUNC2(configs[i]);
		arg = FUNC1(configs[i]);

		if (FUNC6(pctl, pin)) {
			if (param == PIN_CONFIG_OUTPUT) {
				ret = FUNC5(&pctl->gpio,
								   pin, arg);
				if (ret < 0)
					return ret;

				continue;
			} else
				return -ENOTSUPP;
		}

		switch (param) {
		case PIN_CONFIG_BIAS_PULL_PIN_DEFAULT:
		case PIN_CONFIG_BIAS_DISABLE:
			ret = FUNC4(pctl->regmap,
						pctl->data->reg_pulldn,
						FUNC0(pin), 0);
			if (ret < 0)
				return ret;

			ret = FUNC4(pctl->regmap,
						pctl->data->reg_pullup,
						FUNC0(pin), 0);
			if (ret < 0)
				return ret;

			break;

		case PIN_CONFIG_BIAS_PULL_UP:
			ret = FUNC4(pctl->regmap,
						pctl->data->reg_pullup,
						FUNC0(pin), FUNC0(pin));
			if (ret < 0)
				return ret;

			break;

		case PIN_CONFIG_BIAS_PULL_DOWN:
			ret = FUNC4(pctl->regmap,
						pctl->data->reg_pulldn,
						FUNC0(pin), FUNC0(pin));
			if (ret < 0)
				return ret;

			break;

		case PIN_CONFIG_DRIVE_OPEN_DRAIN:
			if (pctl->data->model != SX150X_789 ||
			    FUNC6(pctl, pin))
				return -ENOTSUPP;

			ret = FUNC4(pctl->regmap,
						pctl->data->pri.x789.reg_drain,
						FUNC0(pin), FUNC0(pin));
			if (ret < 0)
				return ret;

			break;

		case PIN_CONFIG_DRIVE_PUSH_PULL:
			if (pctl->data->model != SX150X_789 ||
			    FUNC6(pctl, pin))
				return 0;

			ret = FUNC4(pctl->regmap,
						pctl->data->pri.x789.reg_drain,
						FUNC0(pin), 0);
			if (ret < 0)
				return ret;

			break;

		case PIN_CONFIG_OUTPUT:
			ret = FUNC5(&pctl->gpio,
							   pin, arg);
			if (ret < 0)
				return ret;

			break;

		default:
			return -ENOTSUPP;
		}
	} /* for each config */

	return 0;
}