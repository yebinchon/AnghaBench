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
struct uniphier_pinctrl_priv {int /*<<< orphan*/  regmap; } ;
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
struct pin_desc {int /*<<< orphan*/  drv_data; int /*<<< orphan*/  name; } ;
typedef  enum uniphier_pin_pull_dir { ____Placeholder_uniphier_pin_pull_dir } uniphier_pin_pull_dir ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EINVAL ; 
#define  PIN_CONFIG_BIAS_DISABLE 131 
#define  PIN_CONFIG_BIAS_PULL_DOWN 130 
#define  PIN_CONFIG_BIAS_PULL_PIN_DEFAULT 129 
#define  PIN_CONFIG_BIAS_PULL_UP 128 
 unsigned int UNIPHIER_PINCTRL_PUPDCTRL_BASE ; 
 int UNIPHIER_PIN_PULL_DOWN ; 
 int UNIPHIER_PIN_PULL_DOWN_FIXED ; 
 int UNIPHIER_PIN_PULL_NONE ; 
 int UNIPHIER_PIN_PULL_UP ; 
 int UNIPHIER_PIN_PULL_UP_FIXED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct pin_desc* FUNC2 (struct pinctrl_dev*,unsigned int) ; 
 struct uniphier_pinctrl_priv* FUNC3 (struct pinctrl_dev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,int,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pinctrl_dev *pctldev,
				      unsigned int pin,
				      enum pin_config_param param, u32 arg)
{
	struct uniphier_pinctrl_priv *priv = FUNC3(pctldev);
	const struct pin_desc *desc = FUNC2(pctldev, pin);
	enum uniphier_pin_pull_dir pull_dir =
				FUNC5(desc->drv_data);
	unsigned int pupdctrl, reg, shift;
	unsigned int val = 1;

	switch (param) {
	case PIN_CONFIG_BIAS_DISABLE:
		if (pull_dir == UNIPHIER_PIN_PULL_NONE)
			return 0;
		if (pull_dir == UNIPHIER_PIN_PULL_UP_FIXED ||
		    pull_dir == UNIPHIER_PIN_PULL_DOWN_FIXED) {
			FUNC1(pctldev->dev,
				"can not disable pull register for pin %s\n",
				desc->name);
			return -EINVAL;
		}
		val = 0;
		break;
	case PIN_CONFIG_BIAS_PULL_UP:
		if (pull_dir == UNIPHIER_PIN_PULL_UP_FIXED && arg != 0)
			return 0;
		if (pull_dir != UNIPHIER_PIN_PULL_UP) {
			FUNC1(pctldev->dev,
				"pull-up is unsupported for pin %s\n",
				desc->name);
			return -EINVAL;
		}
		if (arg == 0) {
			FUNC1(pctldev->dev, "pull-up can not be total\n");
			return -EINVAL;
		}
		break;
	case PIN_CONFIG_BIAS_PULL_DOWN:
		if (pull_dir == UNIPHIER_PIN_PULL_DOWN_FIXED && arg != 0)
			return 0;
		if (pull_dir != UNIPHIER_PIN_PULL_DOWN) {
			FUNC1(pctldev->dev,
				"pull-down is unsupported for pin %s\n",
				desc->name);
			return -EINVAL;
		}
		if (arg == 0) {
			FUNC1(pctldev->dev, "pull-down can not be total\n");
			return -EINVAL;
		}
		break;
	case PIN_CONFIG_BIAS_PULL_PIN_DEFAULT:
		if (pull_dir == UNIPHIER_PIN_PULL_NONE) {
			FUNC1(pctldev->dev,
				"pull-up/down is unsupported for pin %s\n",
				desc->name);
			return -EINVAL;
		}

		if (arg == 0)
			return 0; /* configuration ingored */
		break;
	default:
		FUNC0();
	}

	pupdctrl = FUNC6(desc->drv_data);

	reg = UNIPHIER_PINCTRL_PUPDCTRL_BASE + pupdctrl / 32 * 4;
	shift = pupdctrl % 32;

	return FUNC4(priv->regmap, reg, 1 << shift, val << shift);
}