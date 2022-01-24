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
struct pinctrl_dev {int dummy; } ;
struct oxnas_pinctrl {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct oxnas_gpio_bank {int /*<<< orphan*/  id; TYPE_1__ gpio_chip; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  PINMUX_810_PULLUP_CTRL0 ; 
 int /*<<< orphan*/  PINMUX_810_PULLUP_CTRL1 ; 
#define  PIN_CONFIG_BIAS_PULL_UP 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct oxnas_gpio_bank* FUNC3 (struct oxnas_pinctrl*,unsigned int) ; 
 unsigned int FUNC4 (unsigned long) ; 
 struct oxnas_pinctrl* FUNC5 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct pinctrl_dev *pctldev,
				     unsigned int pin, unsigned long *configs,
				     unsigned int num_configs)
{
	struct oxnas_pinctrl *pctl = FUNC5(pctldev);
	struct oxnas_gpio_bank *bank = FUNC3(pctl, pin);
	unsigned int param;
	unsigned int i;
	u32 offset = pin - bank->gpio_chip.base;
	u32 mask = FUNC0(offset);

	FUNC1(pctl->dev, "setting pin %d bank %d mask 0x%x\n",
		pin, bank->gpio_chip.base, mask);

	for (i = 0; i < num_configs; i++) {
		param = FUNC4(configs[i]);

		switch (param) {
		case PIN_CONFIG_BIAS_PULL_UP:
			FUNC1(pctl->dev, "   pullup\n");
			FUNC6(pctl->regmap,
					  (bank->id ?
						PINMUX_810_PULLUP_CTRL1 :
						PINMUX_810_PULLUP_CTRL0),
					  mask, mask);
			break;
		default:
			FUNC2(pctl->dev, "Property %u not supported\n",
				param);
			return -ENOTSUPP;
		}
	}

	return 0;
}