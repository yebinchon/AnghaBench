#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u32 ;
struct pinctrl_dev {int dummy; } ;
struct pic32_pinctrl {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {unsigned int base; } ;
struct pic32_gpio_bank {TYPE_1__ gpio_chip; scalar_t__ reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANSEL_REG ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  CNPD_REG ; 
 int /*<<< orphan*/  CNPU_REG ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  ODCU_REG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
#define  PIN_CONFIG_BIAS_PULL_DOWN 134 
#define  PIN_CONFIG_BIAS_PULL_UP 133 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 132 
#define  PIN_CONFIG_INPUT_ENABLE 131 
#define  PIN_CONFIG_MICROCHIP_ANALOG 130 
#define  PIN_CONFIG_MICROCHIP_DIGITAL 129 
#define  PIN_CONFIG_OUTPUT 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct pic32_gpio_bank* FUNC5 (struct pic32_pinctrl*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,unsigned int,unsigned int) ; 
 unsigned int FUNC8 (unsigned long) ; 
 unsigned int FUNC9 (unsigned long) ; 
 struct pic32_pinctrl* FUNC10 (struct pinctrl_dev*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct pinctrl_dev *pctldev, unsigned pin,
				 unsigned long *configs, unsigned num_configs)
{
	struct pic32_pinctrl *pctl = FUNC10(pctldev);
	struct pic32_gpio_bank *bank = FUNC5(pctl, pin);
	unsigned param;
	u32 arg;
	unsigned int i;
	u32 offset = pin - bank->gpio_chip.base;
	u32 mask = FUNC0(offset);

	FUNC3(pctl->dev, "setting pin %d bank %d mask 0x%x\n",
		pin, bank->gpio_chip.base, mask);

	for (i = 0; i < num_configs; i++) {
		param = FUNC9(configs[i]);
		arg = FUNC8(configs[i]);

		switch (param) {
		case PIN_CONFIG_BIAS_PULL_UP:
			FUNC3(pctl->dev, "   pullup\n");
			FUNC11(mask, bank->reg_base +FUNC2(CNPU_REG));
			break;
		case PIN_CONFIG_BIAS_PULL_DOWN:
			FUNC3(pctl->dev, "   pulldown\n");
			FUNC11(mask, bank->reg_base + FUNC2(CNPD_REG));
			break;
		case PIN_CONFIG_MICROCHIP_DIGITAL:
			FUNC3(pctl->dev, "   digital\n");
			FUNC11(mask, bank->reg_base + FUNC1(ANSEL_REG));
			break;
		case PIN_CONFIG_MICROCHIP_ANALOG:
			FUNC3(pctl->dev, "   analog\n");
			FUNC11(mask, bank->reg_base + FUNC2(ANSEL_REG));
			break;
		case PIN_CONFIG_DRIVE_OPEN_DRAIN:
			FUNC3(pctl->dev, "   opendrain\n");
			FUNC11(mask, bank->reg_base + FUNC2(ODCU_REG));
			break;
		case PIN_CONFIG_INPUT_ENABLE:
			FUNC6(&bank->gpio_chip, offset);
			break;
		case PIN_CONFIG_OUTPUT:
			FUNC7(&bank->gpio_chip,
						    offset, arg);
			break;
		default:
			FUNC4(pctl->dev, "Property %u not supported\n",
				param);
			return -ENOTSUPP;
		}
	}

	return 0;
}