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
typedef  int u32 ;
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
struct bcm281xx_pinctrl_data {TYPE_1__* pins; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  I2C ; 
 int /*<<< orphan*/  INPUT_DIS ; 
#define  PIN_CONFIG_BIAS_DISABLE 131 
#define  PIN_CONFIG_BIAS_PULL_UP 130 
#define  PIN_CONFIG_INPUT_ENABLE 129 
#define  PIN_CONFIG_SLEW_RATE 128 
 int /*<<< orphan*/  PULL_UP_STR ; 
 int /*<<< orphan*/  SLEW ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* bcm281xx_pullup_map ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (unsigned long) ; 
 int FUNC6 (unsigned long) ; 
 struct bcm281xx_pinctrl_data* FUNC7 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctldev,
				   unsigned pin,
				   unsigned long *configs,
				   unsigned num_configs,
				   u32 *val,
				   u32 *mask)
{
	struct bcm281xx_pinctrl_data *pdata = FUNC7(pctldev);
	int i, j;
	enum pin_config_param param;
	u32 arg;

	for (i = 0; i < num_configs; i++) {
		param = FUNC6(configs[i]);
		arg = FUNC5(configs[i]);

		switch (param) {
		case PIN_CONFIG_BIAS_PULL_UP:
			for (j = 0; j < FUNC0(bcm281xx_pullup_map); j++)
				if (bcm281xx_pullup_map[j] == arg)
					break;

			if (j == FUNC0(bcm281xx_pullup_map)) {
				FUNC4(pctldev->dev,
					"Invalid pull-up value (%d) for pin %s "
					"(%d). Valid values are 568, 720, 831, "
					"1080, 1200, 1800, 2700 Ohms.\n",
					arg, pdata->pins[pin].name, pin);
				return -EINVAL;
			}

			FUNC3(val, mask, j+1,
				FUNC2(I2C, PULL_UP_STR),
				FUNC1(I2C, PULL_UP_STR));
			break;

		case PIN_CONFIG_BIAS_DISABLE:
			FUNC3(val, mask, 0,
				FUNC2(I2C, PULL_UP_STR),
				FUNC1(I2C, PULL_UP_STR));
			break;

		case PIN_CONFIG_SLEW_RATE:
			arg = (arg >= 1 ? 1 : 0);
			FUNC3(val, mask, arg,
				FUNC2(I2C, SLEW),
				FUNC1(I2C, SLEW));
			break;

		case PIN_CONFIG_INPUT_ENABLE:
			/* inversed since register is for input _disable_ */
			arg = (arg >= 1 ? 0 : 1);
			FUNC3(val, mask, arg,
				FUNC2(I2C, INPUT_DIS),
				FUNC1(I2C, INPUT_DIS));
			break;

		default:
			FUNC4(pctldev->dev,
				"Unrecognized pin config %d for pin %s (%d).\n",
				param, pdata->pins[pin].name, pin);
			return -EINVAL;

		} /* switch config */
	} /* for each config */

	return 0;
}