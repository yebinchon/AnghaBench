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
struct lpc18xx_scu_data {scalar_t__ base; } ;
struct lpc18xx_pin_caps {scalar_t__ type; scalar_t__ offset; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TYPE_I2C0 ; 
 scalar_t__ TYPE_USB1 ; 
 struct lpc18xx_pin_caps* FUNC0 (unsigned int) ; 
 int FUNC1 (struct pinctrl_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC2 (struct pinctrl_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,struct lpc18xx_pin_caps*) ; 
 int FUNC3 (struct pinctrl_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int FUNC5 (unsigned long) ; 
 struct lpc18xx_scu_data* FUNC6 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct pinctrl_dev *pctldev, unsigned pin,
			     unsigned long *configs, unsigned num_configs)
{
	struct lpc18xx_scu_data *scu = FUNC6(pctldev);
	struct lpc18xx_pin_caps *pin_cap;
	enum pin_config_param param;
	u32 param_val;
	u32 reg;
	int ret;
	int i;

	pin_cap = FUNC0(pin);
	if (!pin_cap)
		return -EINVAL;

	reg = FUNC7(scu->base + pin_cap->offset);

	for (i = 0; i < num_configs; i++) {
		param = FUNC5(configs[i]);
		param_val = FUNC4(configs[i]);

		if (pin_cap->type == TYPE_I2C0)
			ret = FUNC1(pctldev, param, param_val, &reg, pin);
		else if (pin_cap->type == TYPE_USB1)
			ret = FUNC3(pctldev, param, param_val, &reg);
		else
			ret = FUNC2(pctldev, param, param_val, &reg, pin, pin_cap);

		if (ret)
			return ret;
	}

	FUNC8(reg, scu->base + pin_cap->offset);

	return 0;
}