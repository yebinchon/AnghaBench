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
typedef  int u16 ;
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
 int RK_FUNC_GPIO ; 
 struct rockchip_pin_bank* FUNC0 (struct rockchip_pinctrl*,unsigned int) ; 
 unsigned long FUNC1 (int,int) ; 
 int FUNC2 (unsigned long) ; 
 struct rockchip_pinctrl* FUNC3 (struct pinctrl_dev*) ; 
 int FUNC4 (struct rockchip_pin_bank*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rockchip_pin_bank*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rockchip_pin_bank*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rockchip_pin_bank*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC10(struct pinctrl_dev *pctldev, unsigned int pin,
							unsigned long *config)
{
	struct rockchip_pinctrl *info = FUNC3(pctldev);
	struct rockchip_pin_bank *bank = FUNC0(info, pin);
	enum pin_config_param param = FUNC2(*config);
	u16 arg;
	int rc;

	switch (param) {
	case PIN_CONFIG_BIAS_DISABLE:
		if (FUNC6(bank, pin - bank->pin_base) != param)
			return -EINVAL;

		arg = 0;
		break;
	case PIN_CONFIG_BIAS_PULL_UP:
	case PIN_CONFIG_BIAS_PULL_DOWN:
	case PIN_CONFIG_BIAS_PULL_PIN_DEFAULT:
	case PIN_CONFIG_BIAS_BUS_HOLD:
		if (!FUNC9(info->ctrl, param))
			return -ENOTSUPP;

		if (FUNC6(bank, pin - bank->pin_base) != param)
			return -EINVAL;

		arg = 1;
		break;
	case PIN_CONFIG_OUTPUT:
		rc = FUNC5(bank, pin - bank->pin_base);
		if (rc != RK_FUNC_GPIO)
			return -EINVAL;

		rc = FUNC8(&bank->gpio_chip, pin - bank->pin_base);
		if (rc < 0)
			return rc;

		arg = rc ? 1 : 0;
		break;
	case PIN_CONFIG_DRIVE_STRENGTH:
		/* rk3288 is the first with per-pin drive-strength */
		if (!info->ctrl->drv_calc_reg)
			return -ENOTSUPP;

		rc = FUNC4(bank, pin - bank->pin_base);
		if (rc < 0)
			return rc;

		arg = rc;
		break;
	case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
		if (!info->ctrl->schmitt_calc_reg)
			return -ENOTSUPP;

		rc = FUNC7(bank, pin - bank->pin_base);
		if (rc < 0)
			return rc;

		arg = rc;
		break;
	default:
		return -ENOTSUPP;
		break;
	}

	*config = FUNC1(param, arg);

	return 0;
}