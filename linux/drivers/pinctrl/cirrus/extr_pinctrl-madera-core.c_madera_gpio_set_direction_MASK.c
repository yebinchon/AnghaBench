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
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct madera_pin_private {int /*<<< orphan*/  dev; struct madera* madera; } ;
struct madera {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int MADERA_GP1_DIR ; 
 int /*<<< orphan*/  MADERA_GP1_DIR_MASK ; 
 int MADERA_GPIO1_CTRL_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 struct madera_pin_private* FUNC1 (struct pinctrl_dev*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev,
				     struct pinctrl_gpio_range *range,
				     unsigned int offset,
				     bool input)
{
	struct madera_pin_private *priv = FUNC1(pctldev);
	struct madera *madera = priv->madera;
	unsigned int reg = MADERA_GPIO1_CTRL_2 + (2 * offset);
	unsigned int val;
	int ret;

	if (input)
		val = MADERA_GP1_DIR;
	else
		val = 0;

	ret = FUNC2(madera->regmap, reg, MADERA_GP1_DIR_MASK, val);
	if (ret)
		FUNC0(priv->dev, "Failed to write to 0x%x (%d)\n", reg, ret);

	return ret;
}