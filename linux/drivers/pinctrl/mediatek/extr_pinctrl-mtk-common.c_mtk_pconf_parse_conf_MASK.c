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
struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl {int /*<<< orphan*/  chip; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EINVAL ; 
#define  PIN_CONFIG_BIAS_DISABLE 134 
#define  PIN_CONFIG_BIAS_PULL_DOWN 133 
#define  PIN_CONFIG_BIAS_PULL_UP 132 
#define  PIN_CONFIG_DRIVE_STRENGTH 131 
#define  PIN_CONFIG_INPUT_ENABLE 130 
#define  PIN_CONFIG_INPUT_SCHMITT_ENABLE 129 
#define  PIN_CONFIG_OUTPUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int) ; 
 int FUNC1 (struct mtk_pinctrl*,unsigned int,int) ; 
 int FUNC2 (struct mtk_pinctrl*,unsigned int,int,int) ; 
 int FUNC3 (struct mtk_pinctrl*,unsigned int,int,int,int) ; 
 int FUNC4 (struct pinctrl_dev*,int /*<<< orphan*/ *,unsigned int,int) ; 
 struct mtk_pinctrl* FUNC5 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctldev,
		unsigned int pin, enum pin_config_param param,
		enum pin_config_param arg)
{
	int ret = 0;
	struct mtk_pinctrl *pctl = FUNC5(pctldev);

	switch (param) {
	case PIN_CONFIG_BIAS_DISABLE:
		ret = FUNC3(pctl, pin, false, false, arg);
		break;
	case PIN_CONFIG_BIAS_PULL_UP:
		ret = FUNC3(pctl, pin, true, true, arg);
		break;
	case PIN_CONFIG_BIAS_PULL_DOWN:
		ret = FUNC3(pctl, pin, true, false, arg);
		break;
	case PIN_CONFIG_INPUT_ENABLE:
		FUNC4(pctldev, NULL, pin, true);
		ret = FUNC2(pctl, pin, arg, param);
		break;
	case PIN_CONFIG_OUTPUT:
		FUNC0(pctl->chip, pin, arg);
		ret = FUNC4(pctldev, NULL, pin, false);
		break;
	case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
		FUNC4(pctldev, NULL, pin, true);
		ret = FUNC2(pctl, pin, arg, param);
		break;
	case PIN_CONFIG_DRIVE_STRENGTH:
		ret = FUNC1(pctl, pin, arg);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}