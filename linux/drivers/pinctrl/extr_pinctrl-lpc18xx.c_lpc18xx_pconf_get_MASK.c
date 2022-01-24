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
typedef  int /*<<< orphan*/  u16 ;
struct pinctrl_dev {int dummy; } ;
struct lpc18xx_scu_data {scalar_t__ base; } ;
struct lpc18xx_pin_caps {scalar_t__ type; scalar_t__ offset; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TYPE_I2C0 ; 
 scalar_t__ TYPE_USB1 ; 
 struct lpc18xx_pin_caps* FUNC0 (unsigned int) ; 
 int FUNC1 (int,int*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct pinctrl_dev*,int,int*,int /*<<< orphan*/ ,unsigned int,struct lpc18xx_pin_caps*) ; 
 int FUNC3 (int,int*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned long) ; 
 struct lpc18xx_scu_data* FUNC6 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct pinctrl_dev *pctldev, unsigned pin,
			     unsigned long *config)
{
	struct lpc18xx_scu_data *scu = FUNC6(pctldev);
	enum pin_config_param param = FUNC5(*config);
	struct lpc18xx_pin_caps *pin_cap;
	int ret, arg = 0;
	u32 reg;

	pin_cap = FUNC0(pin);
	if (!pin_cap)
		return -EINVAL;

	reg = FUNC7(scu->base + pin_cap->offset);

	if (pin_cap->type == TYPE_I2C0)
		ret = FUNC1(param, &arg, reg, pin);
	else if (pin_cap->type == TYPE_USB1)
		ret = FUNC3(param, &arg, reg);
	else
		ret = FUNC2(pctldev, param, &arg, reg, pin, pin_cap);

	if (ret < 0)
		return ret;

	*config = FUNC4(param, (u16)arg);

	return 0;
}