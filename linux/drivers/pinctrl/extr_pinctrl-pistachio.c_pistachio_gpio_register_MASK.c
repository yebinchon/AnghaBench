#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pistachio_pinctrl {unsigned int nbanks; struct pistachio_gpio_bank* gpio_banks; TYPE_6__* dev; scalar_t__ base; } ;
struct TYPE_8__ {struct device_node* of_node; TYPE_6__* parent; } ;
struct pistachio_gpio_bank {TYPE_1__ gpio_chip; int /*<<< orphan*/  npins; int /*<<< orphan*/  pin_base; int /*<<< orphan*/  irq_chip; scalar_t__ base; struct pistachio_pinctrl* pctl; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  child_name ;
struct TYPE_9__ {struct device_node* of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int FUNC3 (TYPE_1__*,struct pistachio_gpio_bank*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int FUNC8 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC10 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*) ; 
 int /*<<< orphan*/  pistachio_gpio_irq_handler ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static int FUNC13(struct pistachio_pinctrl *pctl)
{
	struct device_node *node = pctl->dev->of_node;
	struct pistachio_gpio_bank *bank;
	unsigned int i;
	int irq, ret = 0;

	for (i = 0; i < pctl->nbanks; i++) {
		char child_name[sizeof("gpioXX")];
		struct device_node *child;

		FUNC12(child_name, sizeof(child_name), "gpio%d", i);
		child = FUNC10(node, child_name);
		if (!child) {
			FUNC1(pctl->dev, "No node for bank %u\n", i);
			ret = -ENODEV;
			goto err;
		}

		if (!FUNC9(child, "gpio-controller", NULL)) {
			FUNC1(pctl->dev,
				"No gpio-controller property for bank %u\n", i);
			FUNC11(child);
			ret = -ENODEV;
			goto err;
		}

		irq = FUNC8(child, 0);
		if (irq < 0) {
			FUNC1(pctl->dev, "No IRQ for bank %u: %d\n", i, irq);
			FUNC11(child);
			ret = irq;
			goto err;
		}

		bank = &pctl->gpio_banks[i];
		bank->pctl = pctl;
		bank->base = pctl->base + FUNC0(i);

		bank->gpio_chip.parent = pctl->dev;
		bank->gpio_chip.of_node = child;
		ret = FUNC3(&bank->gpio_chip, bank);
		if (ret < 0) {
			FUNC1(pctl->dev, "Failed to add GPIO chip %u: %d\n",
				i, ret);
			goto err;
		}

		ret = FUNC5(&bank->gpio_chip, &bank->irq_chip,
					   0, handle_level_irq, IRQ_TYPE_NONE);
		if (ret < 0) {
			FUNC1(pctl->dev, "Failed to add IRQ chip %u: %d\n",
				i, ret);
			FUNC6(&bank->gpio_chip);
			goto err;
		}
		FUNC7(&bank->gpio_chip, &bank->irq_chip,
					     irq, pistachio_gpio_irq_handler);

		ret = FUNC4(&bank->gpio_chip,
					     FUNC2(pctl->dev), 0,
					     bank->pin_base, bank->npins);
		if (ret < 0) {
			FUNC1(pctl->dev, "Failed to add GPIO range %u: %d\n",
				i, ret);
			FUNC6(&bank->gpio_chip);
			goto err;
		}
	}

	return 0;
err:
	for (; i > 0; i--) {
		bank = &pctl->gpio_banks[i - 1];
		FUNC6(&bank->gpio_chip);
	}
	return ret;
}