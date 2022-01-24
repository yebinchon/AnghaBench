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
struct stm32_pinctrl {size_t nbanks; int /*<<< orphan*/  domain; struct stm32_gpio_bank* banks; int /*<<< orphan*/  pctl_dev; struct device* dev; } ;
struct TYPE_3__ {int base; int ngpio; int /*<<< orphan*/  label; struct device* parent; struct device_node* of_node; } ;
struct pinctrl_gpio_range {int id; int pin_base; int base; int npins; TYPE_1__* gc; int /*<<< orphan*/  name; } ;
struct stm32_gpio_bank {int bank_nr; int bank_ioport_nr; TYPE_1__ gpio_chip; int /*<<< orphan*/  domain; int /*<<< orphan*/  fwnode; int /*<<< orphan*/  lock; struct pinctrl_gpio_range range; struct reset_control* clk; struct reset_control* base; } ;
struct resource {int dummy; } ;
struct reset_control {int dummy; } ;
struct of_phandle_args {int* args; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct reset_control*) ; 
 int FUNC1 (struct reset_control*) ; 
 int /*<<< orphan*/  STM32_GPIO_IRQ_LINE ; 
 int STM32_GPIO_PINS_PER_BANK ; 
 int FUNC2 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct reset_control* FUNC5 (struct device*,struct resource*) ; 
 int FUNC6 (TYPE_1__*,struct stm32_gpio_bank*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct stm32_gpio_bank*) ; 
 scalar_t__ FUNC8 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 struct reset_control* FUNC9 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct device_node*,char*,int*) ; 
 struct reset_control* FUNC14 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,struct pinctrl_gpio_range*) ; 
 int /*<<< orphan*/  FUNC16 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_gpio_domain_ops ; 
 TYPE_1__ stm32_gpio_template ; 

__attribute__((used)) static int FUNC18(struct stm32_pinctrl *pctl,
	struct device_node *np)
{
	struct stm32_gpio_bank *bank = &pctl->banks[pctl->nbanks];
	int bank_ioport_nr;
	struct pinctrl_gpio_range *range = &bank->range;
	struct of_phandle_args args;
	struct device *dev = pctl->dev;
	struct resource res;
	struct reset_control *rstc;
	int npins = STM32_GPIO_PINS_PER_BANK;
	int bank_nr, err;

	rstc = FUNC14(np, NULL);
	if (!FUNC0(rstc))
		FUNC16(rstc);

	if (FUNC8(np, 0, &res))
		return -ENODEV;

	bank->base = FUNC5(dev, &res);
	if (FUNC0(bank->base))
		return FUNC1(bank->base);

	bank->clk = FUNC9(np, NULL);
	if (FUNC0(bank->clk)) {
		FUNC3(dev, "failed to get clk (%ld)\n", FUNC1(bank->clk));
		return FUNC1(bank->clk);
	}

	err = FUNC2(bank->clk);
	if (err) {
		FUNC3(dev, "failed to prepare clk (%d)\n", err);
		return err;
	}

	bank->gpio_chip = stm32_gpio_template;

	FUNC12(np, "st,bank-name", &bank->gpio_chip.label);

	if (!FUNC11(np, "gpio-ranges", 3, 0, &args)) {
		bank_nr = args.args[1] / STM32_GPIO_PINS_PER_BANK;
		bank->gpio_chip.base = args.args[1];
	} else {
		bank_nr = pctl->nbanks;
		bank->gpio_chip.base = bank_nr * STM32_GPIO_PINS_PER_BANK;
		range->name = bank->gpio_chip.label;
		range->id = bank_nr;
		range->pin_base = range->id * STM32_GPIO_PINS_PER_BANK;
		range->base = range->id * STM32_GPIO_PINS_PER_BANK;
		range->npins = npins;
		range->gc = &bank->gpio_chip;
		FUNC15(pctl->pctl_dev,
				       &pctl->banks[bank_nr].range);
	}

	if (FUNC13(np, "st,bank-ioport", &bank_ioport_nr))
		bank_ioport_nr = bank_nr;

	bank->gpio_chip.base = bank_nr * STM32_GPIO_PINS_PER_BANK;

	bank->gpio_chip.ngpio = npins;
	bank->gpio_chip.of_node = np;
	bank->gpio_chip.parent = dev;
	bank->bank_nr = bank_nr;
	bank->bank_ioport_nr = bank_ioport_nr;
	FUNC17(&bank->lock);

	/* create irq hierarchical domain */
	bank->fwnode = FUNC10(np);

	bank->domain = FUNC7(pctl->domain, 0,
					STM32_GPIO_IRQ_LINE, bank->fwnode,
					&stm32_gpio_domain_ops, bank);

	if (!bank->domain)
		return -ENODEV;

	err = FUNC6(&bank->gpio_chip, bank);
	if (err) {
		FUNC3(dev, "Failed to add gpiochip(%d)!\n", bank_nr);
		return err;
	}

	FUNC4(dev, "%s bank added\n", bank->gpio_chip.label);
	return 0;
}