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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRV_STR ; 
 int EINVAL ; 
 int /*<<< orphan*/  HYST ; 
 int /*<<< orphan*/  INPUT_DIS ; 
#define  PIN_CONFIG_BIAS_DISABLE 134 
#define  PIN_CONFIG_BIAS_PULL_DOWN 133 
#define  PIN_CONFIG_BIAS_PULL_UP 132 
#define  PIN_CONFIG_DRIVE_STRENGTH 131 
#define  PIN_CONFIG_INPUT_ENABLE 130 
#define  PIN_CONFIG_INPUT_SCHMITT_ENABLE 129 
#define  PIN_CONFIG_SLEW_RATE 128 
 int /*<<< orphan*/  PULL_DN ; 
 int /*<<< orphan*/  PULL_UP ; 
 int /*<<< orphan*/  SLEW ; 
 int /*<<< orphan*/  STD ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 struct bcm281xx_pinctrl_data* FUNC6 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC7(struct pinctrl_dev *pctldev,
				   unsigned pin,
				   unsigned long *configs,
				   unsigned num_configs,
				   u32 *val,
				   u32 *mask)
{
	struct bcm281xx_pinctrl_data *pdata = FUNC6(pctldev);
	int i;
	enum pin_config_param param;
	u32 arg;

	for (i = 0; i < num_configs; i++) {
		param = FUNC5(configs[i]);
		arg = FUNC4(configs[i]);

		switch (param) {
		case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
			arg = (arg >= 1 ? 1 : 0);
			FUNC2(val, mask, arg,
				FUNC1(STD, HYST),
				FUNC0(STD, HYST));
			break;
		/*
		 * The pin bias can only be one of pull-up, pull-down, or
		 * disable.  The user does not need to specify a value for the
		 * property, and the default value from pinconf-generic is
		 * ignored.
		 */
		case PIN_CONFIG_BIAS_DISABLE:
			FUNC2(val, mask, 0,
				FUNC1(STD, PULL_UP),
				FUNC0(STD, PULL_UP));
			FUNC2(val, mask, 0,
				FUNC1(STD, PULL_DN),
				FUNC0(STD, PULL_DN));
			break;

		case PIN_CONFIG_BIAS_PULL_UP:
			FUNC2(val, mask, 1,
				FUNC1(STD, PULL_UP),
				FUNC0(STD, PULL_UP));
			FUNC2(val, mask, 0,
				FUNC1(STD, PULL_DN),
				FUNC0(STD, PULL_DN));
			break;

		case PIN_CONFIG_BIAS_PULL_DOWN:
			FUNC2(val, mask, 0,
				FUNC1(STD, PULL_UP),
				FUNC0(STD, PULL_UP));
			FUNC2(val, mask, 1,
				FUNC1(STD, PULL_DN),
				FUNC0(STD, PULL_DN));
			break;

		case PIN_CONFIG_SLEW_RATE:
			arg = (arg >= 1 ? 1 : 0);
			FUNC2(val, mask, arg,
				FUNC1(STD, SLEW),
				FUNC0(STD, SLEW));
			break;

		case PIN_CONFIG_INPUT_ENABLE:
			/* inversed since register is for input _disable_ */
			arg = (arg >= 1 ? 0 : 1);
			FUNC2(val, mask, arg,
				FUNC1(STD, INPUT_DIS),
				FUNC0(STD, INPUT_DIS));
			break;

		case PIN_CONFIG_DRIVE_STRENGTH:
			/* Valid range is 2-16 mA, even numbers only */
			if ((arg < 2) || (arg > 16) || (arg % 2)) {
				FUNC3(pctldev->dev,
					"Invalid Drive Strength value (%d) for "
					"pin %s (%d). Valid values are "
					"(2..16) mA, even numbers only.\n",
					arg, pdata->pins[pin].name, pin);
				return -EINVAL;
			}
			FUNC2(val, mask, (arg/2)-1,
				FUNC1(STD, DRV_STR),
				FUNC0(STD, DRV_STR));
			break;

		default:
			FUNC3(pctldev->dev,
				"Unrecognized pin config %d for pin %s (%d).\n",
				param, pdata->pins[pin].name, pin);
			return -EINVAL;

		} /* switch config */
	} /* for each config */

	return 0;
}