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
typedef  size_t u32 ;
struct wmt_pinctrl_data {int /*<<< orphan*/  dev; TYPE_1__* banks; } ;
struct pinctrl_dev {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {size_t reg_pull_en; size_t reg_pull_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int EINVAL ; 
 size_t NO_REG ; 
#define  PIN_CONFIG_BIAS_DISABLE 130 
#define  PIN_CONFIG_BIAS_PULL_DOWN 129 
#define  PIN_CONFIG_BIAS_PULL_UP 128 
 size_t FUNC1 (unsigned int) ; 
 size_t FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 size_t FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 struct wmt_pinctrl_data* FUNC6 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct wmt_pinctrl_data*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wmt_pinctrl_data*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pinctrl_dev *pctldev, unsigned pin,
			   unsigned long *configs, unsigned num_configs)
{
	struct wmt_pinctrl_data *data = FUNC6(pctldev);
	enum pin_config_param param;
	u32 arg;
	u32 bank = FUNC1(pin);
	u32 bit = FUNC2(pin);
	u32 reg_pull_en = data->banks[bank].reg_pull_en;
	u32 reg_pull_cfg = data->banks[bank].reg_pull_cfg;
	int i;

	if ((reg_pull_en == NO_REG) || (reg_pull_cfg == NO_REG)) {
		FUNC3(data->dev, "bias functions not supported on pin %d\n",
			pin);
		return -EINVAL;
	}

	for (i = 0; i < num_configs; i++) {
		param = FUNC5(configs[i]);
		arg = FUNC4(configs[i]);

		if ((param == PIN_CONFIG_BIAS_PULL_DOWN) ||
		    (param == PIN_CONFIG_BIAS_PULL_UP)) {
			if (arg == 0)
				param = PIN_CONFIG_BIAS_DISABLE;
		}

		switch (param) {
		case PIN_CONFIG_BIAS_DISABLE:
			FUNC7(data, reg_pull_en, FUNC0(bit));
			break;
		case PIN_CONFIG_BIAS_PULL_DOWN:
			FUNC7(data, reg_pull_cfg, FUNC0(bit));
			FUNC8(data, reg_pull_en, FUNC0(bit));
			break;
		case PIN_CONFIG_BIAS_PULL_UP:
			FUNC8(data, reg_pull_cfg, FUNC0(bit));
			FUNC8(data, reg_pull_en, FUNC0(bit));
			break;
		default:
			FUNC3(data->dev, "unknown pinconf param\n");
			return -EINVAL;
		}
	} /* for each config */

	return 0;
}