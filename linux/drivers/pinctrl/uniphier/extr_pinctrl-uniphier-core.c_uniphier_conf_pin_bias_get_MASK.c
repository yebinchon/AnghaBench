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
struct uniphier_pinctrl_priv {int /*<<< orphan*/  regmap; } ;
struct pinctrl_dev {int dummy; } ;
struct pin_desc {int /*<<< orphan*/  drv_data; } ;
typedef  enum uniphier_pin_pull_dir { ____Placeholder_uniphier_pin_pull_dir } uniphier_pin_pull_dir ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
#define  PIN_CONFIG_BIAS_DISABLE 130 
#define  PIN_CONFIG_BIAS_PULL_DOWN 129 
#define  PIN_CONFIG_BIAS_PULL_UP 128 
 unsigned int UNIPHIER_PINCTRL_PUPDCTRL_BASE ; 
 int UNIPHIER_PIN_PULL_DOWN ; 
 int UNIPHIER_PIN_PULL_DOWN_FIXED ; 
 int UNIPHIER_PIN_PULL_NONE ; 
 int UNIPHIER_PIN_PULL_UP ; 
 int UNIPHIER_PIN_PULL_UP_FIXED ; 
 struct pin_desc* FUNC1 (struct pinctrl_dev*,unsigned int) ; 
 struct uniphier_pinctrl_priv* FUNC2 (struct pinctrl_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctldev,
				      unsigned int pin,
				      enum pin_config_param param)
{
	struct uniphier_pinctrl_priv *priv = FUNC2(pctldev);
	const struct pin_desc *desc = FUNC1(pctldev, pin);
	enum uniphier_pin_pull_dir pull_dir =
				FUNC4(desc->drv_data);
	unsigned int pupdctrl, reg, shift, val;
	unsigned int expected = 1;
	int ret;

	switch (param) {
	case PIN_CONFIG_BIAS_DISABLE:
		if (pull_dir == UNIPHIER_PIN_PULL_NONE)
			return 0;
		if (pull_dir == UNIPHIER_PIN_PULL_UP_FIXED ||
		    pull_dir == UNIPHIER_PIN_PULL_DOWN_FIXED)
			return -EINVAL;
		expected = 0;
		break;
	case PIN_CONFIG_BIAS_PULL_UP:
		if (pull_dir == UNIPHIER_PIN_PULL_UP_FIXED)
			return 0;
		if (pull_dir != UNIPHIER_PIN_PULL_UP)
			return -EINVAL;
		break;
	case PIN_CONFIG_BIAS_PULL_DOWN:
		if (pull_dir == UNIPHIER_PIN_PULL_DOWN_FIXED)
			return 0;
		if (pull_dir != UNIPHIER_PIN_PULL_DOWN)
			return -EINVAL;
		break;
	default:
		FUNC0();
	}

	pupdctrl = FUNC5(desc->drv_data);

	reg = UNIPHIER_PINCTRL_PUPDCTRL_BASE + pupdctrl / 32 * 4;
	shift = pupdctrl % 32;

	ret = FUNC3(priv->regmap, reg, &val);
	if (ret)
		return ret;

	val = (val >> shift) & 1;

	return (val == expected) ? 0 : -EINVAL;
}