#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_8__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_7__ {unsigned int ngpio; struct device_node* of_node; TYPE_5__* parent; } ;
struct oxnas_gpio_bank {unsigned int id; int /*<<< orphan*/  irq_chip; TYPE_1__ gpio_chip; int /*<<< orphan*/  reg_base; } ;
struct of_phandle_args {unsigned int* args; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct oxnas_gpio_bank*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int PINS_PER_BANK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,struct resource*) ; 
 int FUNC5 (TYPE_1__*,struct oxnas_gpio_bank*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 scalar_t__ FUNC9 (struct device_node*,char*,int,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 struct oxnas_gpio_bank* oxnas_gpio_banks ; 
 int /*<<< orphan*/  oxnas_gpio_irq_handler ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct of_phandle_args pinspec;
	struct oxnas_gpio_bank *bank;
	unsigned int id, ngpios;
	int irq, ret;
	struct resource *res;

	if (FUNC9(np, "gpio-ranges",
					     3, 0, &pinspec)) {
		FUNC3(&pdev->dev, "gpio-ranges property not found\n");
		return -EINVAL;
	}

	id = pinspec.args[1] / PINS_PER_BANK;
	ngpios = pinspec.args[2];

	if (id >= FUNC0(oxnas_gpio_banks)) {
		FUNC3(&pdev->dev, "invalid gpio-ranges base arg\n");
		return -EINVAL;
	}

	if (ngpios > PINS_PER_BANK) {
		FUNC3(&pdev->dev, "invalid gpio-ranges count arg\n");
		return -EINVAL;
	}

	bank = &oxnas_gpio_banks[id];

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	bank->reg_base = FUNC4(&pdev->dev, res);
	if (FUNC1(bank->reg_base))
		return FUNC2(bank->reg_base);

	irq = FUNC10(pdev, 0);
	if (irq < 0)
		return irq;

	bank->id = id;
	bank->gpio_chip.parent = &pdev->dev;
	bank->gpio_chip.of_node = np;
	bank->gpio_chip.ngpio = ngpios;
	ret = FUNC5(&bank->gpio_chip, bank);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to add GPIO chip %u: %d\n",
			id, ret);
		return ret;
	}

	ret = FUNC6(&bank->gpio_chip, &bank->irq_chip,
				0, handle_level_irq, IRQ_TYPE_NONE);
	if (ret < 0) {
		FUNC3(&pdev->dev, "Failed to add IRQ chip %u: %d\n",
			id, ret);
		FUNC7(&bank->gpio_chip);
		return ret;
	}

	FUNC8(&bank->gpio_chip, &bank->irq_chip,
				     irq, oxnas_gpio_irq_handler);

	return 0;
}