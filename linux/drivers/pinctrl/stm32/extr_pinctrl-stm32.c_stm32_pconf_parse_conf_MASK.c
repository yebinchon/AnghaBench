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
struct stm32_pinctrl {int /*<<< orphan*/  dev; } ;
struct stm32_gpio_bank {int dummy; } ;
struct pinctrl_gpio_range {int /*<<< orphan*/  gc; } ;
struct pinctrl_dev {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EINVAL ; 
#define  PIN_CONFIG_BIAS_DISABLE 134 
#define  PIN_CONFIG_BIAS_PULL_DOWN 133 
#define  PIN_CONFIG_BIAS_PULL_UP 132 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 131 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 130 
#define  PIN_CONFIG_OUTPUT 129 
#define  PIN_CONFIG_SLEW_RATE 128 
 int /*<<< orphan*/  FUNC0 (struct stm32_gpio_bank*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct stm32_gpio_bank* FUNC2 (int /*<<< orphan*/ ) ; 
 struct stm32_pinctrl* FUNC3 (struct pinctrl_dev*) ; 
 struct pinctrl_gpio_range* FUNC4 (struct pinctrl_dev*,unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (struct stm32_gpio_bank*,int,int) ; 
 int FUNC7 (struct stm32_gpio_bank*,int,int) ; 
 int FUNC8 (struct stm32_gpio_bank*,int,int) ; 
 int FUNC9 (struct pinctrl_dev*,struct pinctrl_gpio_range*,unsigned int,int) ; 

__attribute__((used)) static int FUNC10(struct pinctrl_dev *pctldev,
		unsigned int pin, enum pin_config_param param,
		enum pin_config_param arg)
{
	struct stm32_pinctrl *pctl = FUNC3(pctldev);
	struct pinctrl_gpio_range *range;
	struct stm32_gpio_bank *bank;
	int offset, ret = 0;

	range = FUNC4(pctldev, pin);
	if (!range) {
		FUNC1(pctl->dev, "No gpio range defined.\n");
		return -EINVAL;
	}

	bank = FUNC2(range->gc);
	offset = FUNC5(pin);

	switch (param) {
	case PIN_CONFIG_DRIVE_PUSH_PULL:
		ret = FUNC7(bank, offset, 0);
		break;
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		ret = FUNC7(bank, offset, 1);
		break;
	case PIN_CONFIG_SLEW_RATE:
		ret = FUNC8(bank, offset, arg);
		break;
	case PIN_CONFIG_BIAS_DISABLE:
		ret = FUNC6(bank, offset, 0);
		break;
	case PIN_CONFIG_BIAS_PULL_UP:
		ret = FUNC6(bank, offset, 1);
		break;
	case PIN_CONFIG_BIAS_PULL_DOWN:
		ret = FUNC6(bank, offset, 2);
		break;
	case PIN_CONFIG_OUTPUT:
		FUNC0(bank, offset, arg);
		ret = FUNC9(pctldev, range, pin, false);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}