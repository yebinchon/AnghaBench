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
typedef  int u32 ;
struct pinctrl_dev {int dummy; } ;
struct pic32_pinctrl {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {unsigned int base; } ;
struct pic32_gpio_bank {scalar_t__ reg_base; TYPE_1__ gpio_chip; } ;

/* Variables and functions */
 scalar_t__ ANSEL_REG ; 
 int FUNC0 (unsigned int) ; 
 scalar_t__ CNPD_REG ; 
 scalar_t__ CNPU_REG ; 
 int ENOTSUPP ; 
 scalar_t__ ODCU_REG ; 
#define  PIN_CONFIG_BIAS_PULL_DOWN 134 
#define  PIN_CONFIG_BIAS_PULL_UP 133 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 132 
#define  PIN_CONFIG_INPUT_ENABLE 131 
#define  PIN_CONFIG_MICROCHIP_ANALOG 130 
#define  PIN_CONFIG_MICROCHIP_DIGITAL 129 
#define  PIN_CONFIG_OUTPUT 128 
 scalar_t__ TRIS_REG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct pic32_gpio_bank* FUNC2 (struct pic32_pinctrl*,unsigned int) ; 
 unsigned long FUNC3 (unsigned int,int) ; 
 unsigned int FUNC4 (unsigned long) ; 
 struct pic32_pinctrl* FUNC5 (struct pinctrl_dev*) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct pinctrl_dev *pctldev, unsigned pin,
				 unsigned long *config)
{
	struct pic32_pinctrl *pctl = FUNC5(pctldev);
	struct pic32_gpio_bank *bank = FUNC2(pctl, pin);
	unsigned param = FUNC4(*config);
	u32 mask = FUNC0(pin - bank->gpio_chip.base);
	u32 arg;

	switch (param) {
	case PIN_CONFIG_BIAS_PULL_UP:
		arg = !!(FUNC6(bank->reg_base + CNPU_REG) & mask);
		break;
	case PIN_CONFIG_BIAS_PULL_DOWN:
		arg = !!(FUNC6(bank->reg_base + CNPD_REG) & mask);
		break;
	case PIN_CONFIG_MICROCHIP_DIGITAL:
		arg = !(FUNC6(bank->reg_base + ANSEL_REG) & mask);
		break;
	case PIN_CONFIG_MICROCHIP_ANALOG:
		arg = !!(FUNC6(bank->reg_base + ANSEL_REG) & mask);
		break;
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		arg = !!(FUNC6(bank->reg_base + ODCU_REG) & mask);
		break;
	case PIN_CONFIG_INPUT_ENABLE:
		arg = !!(FUNC6(bank->reg_base + TRIS_REG) & mask);
		break;
	case PIN_CONFIG_OUTPUT:
		arg = !(FUNC6(bank->reg_base + TRIS_REG) & mask);
		break;
	default:
		FUNC1(pctl->dev, "Property %u not supported\n", param);
		return -ENOTSUPP;
	}

	*config = FUNC3(param, arg);

	return 0;
}