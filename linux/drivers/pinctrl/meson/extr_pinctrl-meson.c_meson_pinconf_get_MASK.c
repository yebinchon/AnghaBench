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
typedef  int u16 ;
struct pinctrl_dev {int dummy; } ;
struct meson_pinctrl {int /*<<< orphan*/  dev; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 133 
#define  PIN_CONFIG_BIAS_PULL_DOWN 132 
#define  PIN_CONFIG_BIAS_PULL_UP 131 
#define  PIN_CONFIG_DRIVE_STRENGTH_UA 130 
#define  PIN_CONFIG_OUTPUT 129 
#define  PIN_CONFIG_OUTPUT_ENABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned long) ; 
 int FUNC1 (struct meson_pinctrl*,unsigned int) ; 
 int FUNC2 (struct meson_pinctrl*,unsigned int,int*) ; 
 int FUNC3 (struct meson_pinctrl*,unsigned int) ; 
 int FUNC4 (struct meson_pinctrl*,unsigned int) ; 
 unsigned long FUNC5 (int,int) ; 
 int FUNC6 (unsigned long) ; 
 struct meson_pinctrl* FUNC7 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pcdev, unsigned int pin,
			     unsigned long *config)
{
	struct meson_pinctrl *pc = FUNC7(pcdev);
	enum pin_config_param param = FUNC6(*config);
	u16 arg;
	int ret;

	switch (param) {
	case PIN_CONFIG_BIAS_DISABLE:
	case PIN_CONFIG_BIAS_PULL_DOWN:
	case PIN_CONFIG_BIAS_PULL_UP:
		if (FUNC4(pc, pin) == param)
			arg = 1;
		else
			return -EINVAL;
		break;
	case PIN_CONFIG_DRIVE_STRENGTH_UA:
		ret = FUNC2(pc, pin, &arg);
		if (ret)
			return ret;
		break;
	case PIN_CONFIG_OUTPUT_ENABLE:
		ret = FUNC3(pc, pin);
		if (ret <= 0)
			return -EINVAL;
		arg = 1;
		break;
	case PIN_CONFIG_OUTPUT:
		ret = FUNC3(pc, pin);
		if (ret <= 0)
			return -EINVAL;

		ret = FUNC1(pc, pin);
		if (ret < 0)
			return -EINVAL;

		arg = ret;
		break;

	default:
		return -ENOTSUPP;
	}

	*config = FUNC5(param, arg);
	FUNC0(pc->dev, "pinconf for pin %u is %lu\n", pin, *config);

	return 0;
}