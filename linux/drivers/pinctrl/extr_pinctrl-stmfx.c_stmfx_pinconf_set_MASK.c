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
typedef  int /*<<< orphan*/  u32 ;
struct stmfx_pinctrl {int /*<<< orphan*/  gpio_chip; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 134 
#define  PIN_CONFIG_BIAS_PULL_DOWN 133 
#define  PIN_CONFIG_BIAS_PULL_PIN_DEFAULT 132 
#define  PIN_CONFIG_BIAS_PULL_UP 131 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 130 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 129 
#define  PIN_CONFIG_OUTPUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 struct stmfx_pinctrl* FUNC3 (struct pinctrl_dev*) ; 
 struct pinctrl_gpio_range* FUNC4 (struct pinctrl_dev*,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC7 (struct stmfx_pinctrl*,unsigned int,int) ; 
 int FUNC8 (struct stmfx_pinctrl*,unsigned int,int) ; 

__attribute__((used)) static int FUNC9(struct pinctrl_dev *pctldev, unsigned int pin,
			     unsigned long *configs, unsigned int num_configs)
{
	struct stmfx_pinctrl *pctl = FUNC3(pctldev);
	struct pinctrl_gpio_range *range;
	enum pin_config_param param;
	u32 arg;
	int dir, i, ret;

	range = FUNC4(pctldev, pin);
	if (!range) {
		FUNC0(pctldev->dev, "pin %d is not available\n", pin);
		return -EINVAL;
	}

	dir = FUNC6(&pctl->gpio_chip, pin);
	if (dir < 0)
		return dir;

	for (i = 0; i < num_configs; i++) {
		param = FUNC2(configs[i]);
		arg = FUNC1(configs[i]);

		switch (param) {
		case PIN_CONFIG_BIAS_PULL_PIN_DEFAULT:
		case PIN_CONFIG_BIAS_DISABLE:
		case PIN_CONFIG_DRIVE_PUSH_PULL:
			ret = FUNC8(pctl, pin, 0);
			if (ret)
				return ret;
			break;
		case PIN_CONFIG_BIAS_PULL_DOWN:
			ret = FUNC8(pctl, pin, 1);
			if (ret)
				return ret;
			ret = FUNC7(pctl, pin, 0);
			if (ret)
				return ret;
			break;
		case PIN_CONFIG_BIAS_PULL_UP:
			ret = FUNC8(pctl, pin, 1);
			if (ret)
				return ret;
			ret = FUNC7(pctl, pin, 1);
			if (ret)
				return ret;
			break;
		case PIN_CONFIG_DRIVE_OPEN_DRAIN:
			ret = FUNC8(pctl, pin, 1);
			if (ret)
				return ret;
			break;
		case PIN_CONFIG_OUTPUT:
			ret = FUNC5(&pctl->gpio_chip,
							  pin, arg);
			if (ret)
				return ret;
			break;
		default:
			return -ENOTSUPP;
		}
	}

	return 0;
}