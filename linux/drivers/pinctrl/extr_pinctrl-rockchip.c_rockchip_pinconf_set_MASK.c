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
struct rockchip_pinctrl {TYPE_1__* ctrl; } ;
struct rockchip_pin_bank {int /*<<< orphan*/  pin_base; int /*<<< orphan*/  gpio_chip; } ;
struct pinctrl_dev {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int /*<<< orphan*/  schmitt_calc_reg; int /*<<< orphan*/  drv_calc_reg; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_BUS_HOLD 135 
#define  PIN_CONFIG_BIAS_DISABLE 134 
#define  PIN_CONFIG_BIAS_PULL_DOWN 133 
#define  PIN_CONFIG_BIAS_PULL_PIN_DEFAULT 132 
#define  PIN_CONFIG_BIAS_PULL_UP 131 
#define  PIN_CONFIG_DRIVE_STRENGTH 130 
#define  PIN_CONFIG_INPUT_SCHMITT_ENABLE 129 
#define  PIN_CONFIG_OUTPUT 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct rockchip_pin_bank* FUNC1 (struct rockchip_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 struct rockchip_pinctrl* FUNC4 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int FUNC7 (struct rockchip_pin_bank*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct rockchip_pin_bank*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct rockchip_pin_bank*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct pinctrl_dev *pctldev, unsigned int pin,
				unsigned long *configs, unsigned num_configs)
{
	struct rockchip_pinctrl *info = FUNC4(pctldev);
	struct rockchip_pin_bank *bank = FUNC1(info, pin);
	enum pin_config_param param;
	u32 arg;
	int i;
	int rc;

	for (i = 0; i < num_configs; i++) {
		param = FUNC3(configs[i]);
		arg = FUNC2(configs[i]);

		switch (param) {
		case PIN_CONFIG_BIAS_DISABLE:
			rc =  FUNC8(bank, pin - bank->pin_base,
				param);
			if (rc)
				return rc;
			break;
		case PIN_CONFIG_BIAS_PULL_UP:
		case PIN_CONFIG_BIAS_PULL_DOWN:
		case PIN_CONFIG_BIAS_PULL_PIN_DEFAULT:
		case PIN_CONFIG_BIAS_BUS_HOLD:
			if (!FUNC6(info->ctrl, param))
				return -ENOTSUPP;

			if (!arg)
				return -EINVAL;

			rc = FUNC8(bank, pin - bank->pin_base,
				param);
			if (rc)
				return rc;
			break;
		case PIN_CONFIG_OUTPUT:
			FUNC5(&bank->gpio_chip,
					  pin - bank->pin_base, arg);
			rc = FUNC0(&bank->gpio_chip,
					  pin - bank->pin_base, false);
			if (rc)
				return rc;
			break;
		case PIN_CONFIG_DRIVE_STRENGTH:
			/* rk3288 is the first with per-pin drive-strength */
			if (!info->ctrl->drv_calc_reg)
				return -ENOTSUPP;

			rc = FUNC7(bank,
						pin - bank->pin_base, arg);
			if (rc < 0)
				return rc;
			break;
		case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
			if (!info->ctrl->schmitt_calc_reg)
				return -ENOTSUPP;

			rc = FUNC9(bank,
						  pin - bank->pin_base, arg);
			if (rc < 0)
				return rc;
			break;
		default:
			return -ENOTSUPP;
			break;
		}
	} /* for each config */

	return 0;
}