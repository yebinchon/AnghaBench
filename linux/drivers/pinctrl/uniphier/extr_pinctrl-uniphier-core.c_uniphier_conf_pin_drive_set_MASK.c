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
typedef  unsigned int const u32 ;
struct uniphier_pinctrl_priv {int /*<<< orphan*/  regmap; } ;
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
struct pin_desc {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int const,...) ; 
 struct pin_desc* FUNC1 (struct pinctrl_dev*,unsigned int) ; 
 struct uniphier_pinctrl_priv* FUNC2 (struct pinctrl_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int FUNC4 (struct pinctrl_dev*,unsigned int,unsigned int*,unsigned int*,unsigned int*,unsigned int const**) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
				       unsigned int pin, u32 strength)
{
	struct uniphier_pinctrl_priv *priv = FUNC2(pctldev);
	const struct pin_desc *desc = FUNC1(pctldev, pin);
	unsigned int reg, shift, mask, val;
	const unsigned int *strengths;
	int ret;

	ret = FUNC4(pctldev, pin, &reg, &shift,
					     &mask, &strengths);
	if (ret) {
		FUNC0(pctldev->dev, "cannot set drive strength for pin %s\n",
			desc->name);
		return ret;
	}

	for (val = 0; val <= mask; val++) {
		if (strengths[val] > strength)
			break;
	}

	if (val == 0) {
		FUNC0(pctldev->dev,
			"unsupported drive strength %u mA for pin %s\n",
			strength, desc->name);
		return -EINVAL;
	}

	if (!mask)
		return 0;

	val--;

	return FUNC3(priv->regmap, reg,
				  mask << shift, val << shift);
}