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
struct stmfx_pinctrl {int /*<<< orphan*/  gpio_chip; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 133 
#define  PIN_CONFIG_BIAS_PULL_DOWN 132 
#define  PIN_CONFIG_BIAS_PULL_UP 131 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 130 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 129 
#define  PIN_CONFIG_OUTPUT 128 
 unsigned long FUNC0 (int,int) ; 
 int FUNC1 (unsigned long) ; 
 struct stmfx_pinctrl* FUNC2 (struct pinctrl_dev*) ; 
 struct pinctrl_gpio_range* FUNC3 (struct pinctrl_dev*,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC6 (struct stmfx_pinctrl*,unsigned int) ; 
 int FUNC7 (struct stmfx_pinctrl*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctldev,
			     unsigned int pin, unsigned long *config)
{
	struct stmfx_pinctrl *pctl = FUNC2(pctldev);
	u32 param = FUNC1(*config);
	struct pinctrl_gpio_range *range;
	u32 arg = 0;
	int ret, dir, type, pupd;

	range = FUNC3(pctldev, pin);
	if (!range)
		return -EINVAL;

	dir = FUNC5(&pctl->gpio_chip, pin);
	if (dir < 0)
		return dir;
	type = FUNC7(pctl, pin);
	if (type < 0)
		return type;
	pupd = FUNC6(pctl, pin);
	if (pupd < 0)
		return pupd;

	switch (param) {
	case PIN_CONFIG_BIAS_DISABLE:
		if ((!dir && (!type || !pupd)) || (dir && !type))
			arg = 1;
		break;
	case PIN_CONFIG_BIAS_PULL_DOWN:
		if (dir && type && !pupd)
			arg = 1;
		break;
	case PIN_CONFIG_BIAS_PULL_UP:
		if (type && pupd)
			arg = 1;
		break;
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		if ((!dir && type) || (dir && !type))
			arg = 1;
		break;
	case PIN_CONFIG_DRIVE_PUSH_PULL:
		if ((!dir && !type) || (dir && type))
			arg = 1;
		break;
	case PIN_CONFIG_OUTPUT:
		if (dir)
			return -EINVAL;

		ret = FUNC4(&pctl->gpio_chip, pin);
		if (ret < 0)
			return ret;

		arg = ret;
		break;
	default:
		return -ENOTSUPP;
	}

	*config = FUNC0(param, arg);

	return 0;
}