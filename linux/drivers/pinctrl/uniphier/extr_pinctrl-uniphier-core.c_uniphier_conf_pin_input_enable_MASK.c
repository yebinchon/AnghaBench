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
typedef  scalar_t__ u32 ;
struct uniphier_pinctrl_priv {int /*<<< orphan*/  regmap; TYPE_1__* socdata; } ;
struct pinctrl_dev {int dummy; } ;
struct pin_desc {int /*<<< orphan*/  drv_data; } ;
struct TYPE_2__ {int caps; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL ; 
 unsigned int UNIPHIER_PINCTRL_IECTRL_BASE ; 
 unsigned int UNIPHIER_PIN_IECTRL_NONE ; 
 struct pin_desc* FUNC1 (struct pinctrl_dev*,unsigned int) ; 
 struct uniphier_pinctrl_priv* FUNC2 (struct pinctrl_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
					  unsigned int pin, u32 enable)
{
	struct uniphier_pinctrl_priv *priv = FUNC2(pctldev);
	const struct pin_desc *desc = FUNC1(pctldev, pin);
	unsigned int iectrl = FUNC4(desc->drv_data);
	unsigned int reg, mask;

	/*
	 * Multiple pins share one input enable, per-pin disabling is
	 * impossible.
	 */
	if (!(priv->socdata->caps & UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL) &&
	    !enable)
		return -EINVAL;

	/* UNIPHIER_PIN_IECTRL_NONE means the pin is always input-enabled */
	if (iectrl == UNIPHIER_PIN_IECTRL_NONE)
		return enable ? 0 : -EINVAL;

	if (priv->socdata->caps & UNIPHIER_PINCTRL_CAPS_PERPIN_IECTRL)
		iectrl = pin;

	reg = UNIPHIER_PINCTRL_IECTRL_BASE + iectrl / 32 * 4;
	mask = FUNC0(iectrl % 32);

	return FUNC3(priv->regmap, reg, mask, enable ? mask : 0);
}