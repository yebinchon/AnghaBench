#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct st_pinctrl {scalar_t__ irqmux_base; struct device* dev; struct st_gpio_bank* banks; } ;
struct TYPE_6__ {int base; int ngpio; struct device_node* label; struct device* parent; struct device_node* of_node; } ;
struct pinctrl_gpio_range {int id; int pin_base; int base; int npins; struct device_node* name; TYPE_1__* gc; } ;
struct st_gpio_bank {TYPE_1__ gpio_chip; int /*<<< orphan*/  lock; int /*<<< orphan*/  base; struct pinctrl_gpio_range range; } ;
struct resource {int start; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int ST_GPIO_PINS_PER_BANK ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 int FUNC5 (TYPE_1__*,struct st_gpio_bank*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 scalar_t__ FUNC9 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC10 (struct device_node*,char*) ; 
 scalar_t__ FUNC11 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*,struct device_node**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  st_gpio_irq_handler ; 
 int /*<<< orphan*/  st_gpio_irqchip ; 
 TYPE_1__ st_gpio_template ; 

__attribute__((used)) static int FUNC14(struct st_pinctrl *info,
	int bank_nr, struct device_node *np)
{
	struct st_gpio_bank *bank = &info->banks[bank_nr];
	struct pinctrl_gpio_range *range = &bank->range;
	struct device *dev = info->dev;
	int bank_num = FUNC10(np, "gpio");
	struct resource res, irq_res;
	int gpio_irq = 0, err;

	if (FUNC9(np, 0, &res))
		return -ENODEV;

	bank->base = FUNC4(dev, &res);
	if (FUNC0(bank->base))
		return FUNC1(bank->base);

	bank->gpio_chip = st_gpio_template;
	bank->gpio_chip.base = bank_num * ST_GPIO_PINS_PER_BANK;
	bank->gpio_chip.ngpio = ST_GPIO_PINS_PER_BANK;
	bank->gpio_chip.of_node = np;
	bank->gpio_chip.parent = dev;
	FUNC13(&bank->lock);

	FUNC12(np, "st,bank-name", &range->name);
	bank->gpio_chip.label = range->name;

	range->id = bank_num;
	range->pin_base = range->base = range->id * ST_GPIO_PINS_PER_BANK;
	range->npins = bank->gpio_chip.ngpio;
	range->gc = &bank->gpio_chip;
	err  = FUNC5(&bank->gpio_chip, bank);
	if (err) {
		FUNC2(dev, "Failed to add gpiochip(%d)!\n", bank_num);
		return err;
	}
	FUNC3(dev, "%s bank added.\n", range->name);

	/**
	 * GPIO bank can have one of the two possible types of
	 * interrupt-wirings.
	 *
	 * First type is via irqmux, single interrupt is used by multiple
	 * gpio banks. This reduces number of overall interrupts numbers
	 * required. All these banks belong to a single pincontroller.
	 *		  _________
	 *		 |	   |----> [gpio-bank (n)    ]
	 *		 |	   |----> [gpio-bank (n + 1)]
	 *	[irqN]-- | irq-mux |----> [gpio-bank (n + 2)]
	 *		 |	   |----> [gpio-bank (...  )]
	 *		 |_________|----> [gpio-bank (n + 7)]
	 *
	 * Second type has a dedicated interrupt per each gpio bank.
	 *
	 *	[irqN]----> [gpio-bank (n)]
	 */

	if (FUNC11(np, 0, &irq_res) > 0) {
		gpio_irq = irq_res.start;
		FUNC8(&bank->gpio_chip, &st_gpio_irqchip,
					     gpio_irq, st_gpio_irq_handler);
	}

	if (info->irqmux_base || gpio_irq > 0) {
		err = FUNC6(&bank->gpio_chip, &st_gpio_irqchip,
					   0, handle_simple_irq,
					   IRQ_TYPE_NONE);
		if (err) {
			FUNC7(&bank->gpio_chip);
			FUNC3(dev, "could not add irqchip\n");
			return err;
		}
	} else {
		FUNC3(dev, "No IRQ support for %pOF bank\n", np);
	}

	return 0;
}