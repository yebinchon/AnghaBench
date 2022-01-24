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
struct meson_pinctrl {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 133 
#define  PIN_CONFIG_BIAS_PULL_DOWN 132 
#define  PIN_CONFIG_BIAS_PULL_UP 131 
#define  PIN_CONFIG_DRIVE_STRENGTH_UA 130 
#define  PIN_CONFIG_OUTPUT 129 
#define  PIN_CONFIG_OUTPUT_ENABLE 128 
 int FUNC0 (struct meson_pinctrl*,unsigned int) ; 
 int FUNC1 (struct meson_pinctrl*,unsigned int,int) ; 
 int FUNC2 (struct meson_pinctrl*,unsigned int,unsigned int) ; 
 int FUNC3 (struct meson_pinctrl*,unsigned int,unsigned int) ; 
 int FUNC4 (struct meson_pinctrl*,unsigned int,unsigned int) ; 
 unsigned int FUNC5 (unsigned long) ; 
 int FUNC6 (unsigned long) ; 
 struct meson_pinctrl* FUNC7 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pcdev, unsigned int pin,
			     unsigned long *configs, unsigned num_configs)
{
	struct meson_pinctrl *pc = FUNC7(pcdev);
	enum pin_config_param param;
	unsigned int arg = 0;
	int i, ret;

	for (i = 0; i < num_configs; i++) {
		param = FUNC6(configs[i]);

		switch (param) {
		case PIN_CONFIG_DRIVE_STRENGTH_UA:
		case PIN_CONFIG_OUTPUT_ENABLE:
		case PIN_CONFIG_OUTPUT:
			arg = FUNC5(configs[i]);
			break;

		default:
			break;
		}

		switch (param) {
		case PIN_CONFIG_BIAS_DISABLE:
			ret = FUNC0(pc, pin);
			break;
		case PIN_CONFIG_BIAS_PULL_UP:
			ret = FUNC1(pc, pin, true);
			break;
		case PIN_CONFIG_BIAS_PULL_DOWN:
			ret = FUNC1(pc, pin, false);
			break;
		case PIN_CONFIG_DRIVE_STRENGTH_UA:
			ret = FUNC2(pc, pin, arg);
			break;
		case PIN_CONFIG_OUTPUT_ENABLE:
			ret = FUNC3(pc, pin, arg);
			break;
		case PIN_CONFIG_OUTPUT:
			ret = FUNC4(pc, pin, arg);
			break;
		default:
			ret = -ENOTSUPP;
		}

		if (ret)
			return ret;
	}

	return 0;
}