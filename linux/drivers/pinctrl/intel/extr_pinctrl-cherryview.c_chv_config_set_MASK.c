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
struct pinctrl_dev {int dummy; } ;
struct chv_pinctrl {int /*<<< orphan*/  dev; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EBUSY ; 
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_DISABLE 132 
#define  PIN_CONFIG_BIAS_PULL_DOWN 131 
#define  PIN_CONFIG_BIAS_PULL_UP 130 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 129 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 128 
 int FUNC0 (struct chv_pinctrl*,unsigned int,int) ; 
 int FUNC1 (struct chv_pinctrl*,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct chv_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 struct chv_pinctrl* FUNC6 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC7(struct pinctrl_dev *pctldev, unsigned int pin,
			  unsigned long *configs, unsigned int nconfigs)
{
	struct chv_pinctrl *pctrl = FUNC6(pctldev);
	enum pin_config_param param;
	int i, ret;
	u32 arg;

	if (FUNC2(pctrl, pin))
		return -EBUSY;

	for (i = 0; i < nconfigs; i++) {
		param = FUNC5(configs[i]);
		arg = FUNC4(configs[i]);

		switch (param) {
		case PIN_CONFIG_BIAS_DISABLE:
		case PIN_CONFIG_BIAS_PULL_UP:
		case PIN_CONFIG_BIAS_PULL_DOWN:
			ret = FUNC1(pctrl, pin, param, arg);
			if (ret)
				return ret;
			break;

		case PIN_CONFIG_DRIVE_PUSH_PULL:
			ret = FUNC0(pctrl, pin, false);
			if (ret)
				return ret;
			break;

		case PIN_CONFIG_DRIVE_OPEN_DRAIN:
			ret = FUNC0(pctrl, pin, true);
			if (ret)
				return ret;
			break;

		default:
			return -ENOTSUPP;
		}

		FUNC3(pctrl->dev, "pin %d set config %d arg %u\n", pin,
			param, arg);
	}

	return 0;
}