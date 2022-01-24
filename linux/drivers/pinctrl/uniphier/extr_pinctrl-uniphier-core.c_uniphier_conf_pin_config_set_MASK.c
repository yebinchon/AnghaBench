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
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EINVAL ; 
#define  PIN_CONFIG_BIAS_DISABLE 133 
#define  PIN_CONFIG_BIAS_PULL_DOWN 132 
#define  PIN_CONFIG_BIAS_PULL_PIN_DEFAULT 131 
#define  PIN_CONFIG_BIAS_PULL_UP 130 
#define  PIN_CONFIG_DRIVE_STRENGTH 129 
#define  PIN_CONFIG_INPUT_ENABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (struct pinctrl_dev*,unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pinctrl_dev*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pinctrl_dev*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctldev,
					unsigned pin,
					unsigned long *configs,
					unsigned num_configs)
{
	int i, ret;

	for (i = 0; i < num_configs; i++) {
		enum pin_config_param param =
					FUNC2(configs[i]);
		u32 arg = FUNC1(configs[i]);

		switch (param) {
		case PIN_CONFIG_BIAS_DISABLE:
		case PIN_CONFIG_BIAS_PULL_UP:
		case PIN_CONFIG_BIAS_PULL_DOWN:
		case PIN_CONFIG_BIAS_PULL_PIN_DEFAULT:
			ret = FUNC3(pctldev, pin,
							 param, arg);
			break;
		case PIN_CONFIG_DRIVE_STRENGTH:
			ret = FUNC4(pctldev, pin, arg);
			break;
		case PIN_CONFIG_INPUT_ENABLE:
			ret = FUNC5(pctldev, pin, arg);
			break;
		default:
			FUNC0(pctldev->dev,
				"unsupported configuration parameter %u\n",
				param);
			return -EINVAL;
		}

		if (ret)
			return ret;
	}

	return 0;
}