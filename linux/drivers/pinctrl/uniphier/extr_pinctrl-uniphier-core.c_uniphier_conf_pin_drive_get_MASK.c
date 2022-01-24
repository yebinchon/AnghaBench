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
typedef  unsigned int u32 ;
struct uniphier_pinctrl_priv {int /*<<< orphan*/  regmap; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 struct uniphier_pinctrl_priv* FUNC0 (struct pinctrl_dev*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int,unsigned int*) ; 
 int FUNC2 (struct pinctrl_dev*,unsigned int,unsigned int*,unsigned int*,unsigned int*,unsigned int const**) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev,
				       unsigned int pin, u32 *strength)
{
	struct uniphier_pinctrl_priv *priv = FUNC0(pctldev);
	unsigned int reg, shift, mask, val;
	const unsigned int *strengths;
	int ret;

	ret = FUNC2(pctldev, pin, &reg, &shift,
					     &mask, &strengths);
	if (ret)
		return ret;

	if (mask) {
		ret = FUNC1(priv->regmap, reg, &val);
		if (ret)
			return ret;
	} else {
		val = 0;
	}

	*strength = strengths[(val >> shift) & mask];

	return 0;
}