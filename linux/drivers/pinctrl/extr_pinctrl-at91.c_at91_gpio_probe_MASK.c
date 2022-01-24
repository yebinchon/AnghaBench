#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct resource {int dummy; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pinctrl_gpio_range {int id; int pin_base; int base; int npins; struct gpio_chip* gc; int /*<<< orphan*/  name; } ;
struct gpio_chip {int base; int ngpio; char const* const* names; int /*<<< orphan*/  label; int /*<<< orphan*/  owner; TYPE_2__* parent; struct device_node* of_node; } ;
struct device_node {int dummy; } ;
struct at91_pinctrl_mux_ops {int dummy; } ;
struct at91_gpio_chip {int pioc_virq; int pioc_idx; int /*<<< orphan*/  clock; int /*<<< orphan*/  regbase; struct pinctrl_gpio_range range; struct gpio_chip chip; struct at91_pinctrl_mux_ops* ops; } ;
struct TYPE_10__ {scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (struct at91_gpio_chip**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int MAX_NB_GPIO_PER_BANK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC4 (struct platform_device*,struct at91_gpio_chip*) ; 
 int /*<<< orphan*/  at91_gpio_of_match ; 
 struct gpio_chip at91_gpio_template ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,struct resource*) ; 
 char** FUNC12 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct at91_gpio_chip* FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_banks ; 
 struct at91_gpio_chip** gpio_chips ; 
 int FUNC14 (struct gpio_chip*,struct at91_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC15 (struct gpio_chip*) ; 
 char* FUNC16 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int FUNC18 (struct device_node*,char*) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (struct device_node*,char*,int*) ; 
 int FUNC21 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC22 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,int,int) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct resource *res;
	struct at91_gpio_chip *at91_chip = NULL;
	struct gpio_chip *chip;
	struct pinctrl_gpio_range *range;
	int ret = 0;
	int irq, i;
	int alias_idx = FUNC18(np, "gpio");
	uint32_t ngpio;
	char **names;

	FUNC1(alias_idx >= FUNC0(gpio_chips));
	if (gpio_chips[alias_idx]) {
		ret = -EBUSY;
		goto err;
	}

	irq = FUNC21(pdev, 0);
	if (irq < 0) {
		ret = irq;
		goto err;
	}

	at91_chip = FUNC13(&pdev->dev, sizeof(*at91_chip), GFP_KERNEL);
	if (!at91_chip) {
		ret = -ENOMEM;
		goto err;
	}

	res = FUNC22(pdev, IORESOURCE_MEM, 0);
	at91_chip->regbase = FUNC11(&pdev->dev, res);
	if (FUNC2(at91_chip->regbase)) {
		ret = FUNC3(at91_chip->regbase);
		goto err;
	}

	at91_chip->ops = (struct at91_pinctrl_mux_ops *)
		FUNC19(at91_gpio_of_match, &pdev->dev)->data;
	at91_chip->pioc_virq = irq;
	at91_chip->pioc_idx = alias_idx;

	at91_chip->clock = FUNC10(&pdev->dev, NULL);
	if (FUNC2(at91_chip->clock)) {
		FUNC7(&pdev->dev, "failed to get clock, ignoring.\n");
		ret = FUNC3(at91_chip->clock);
		goto err;
	}

	ret = FUNC6(at91_chip->clock);
	if (ret) {
		FUNC7(&pdev->dev, "failed to prepare and enable clock, ignoring.\n");
		goto clk_enable_err;
	}

	at91_chip->chip = at91_gpio_template;

	chip = &at91_chip->chip;
	chip->of_node = np;
	chip->label = FUNC9(&pdev->dev);
	chip->parent = &pdev->dev;
	chip->owner = THIS_MODULE;
	chip->base = alias_idx * MAX_NB_GPIO_PER_BANK;

	if (!FUNC20(np, "#gpio-lines", &ngpio)) {
		if (ngpio >= MAX_NB_GPIO_PER_BANK)
			FUNC23("at91_gpio.%d, gpio-nb >= %d failback to %d\n",
			       alias_idx, MAX_NB_GPIO_PER_BANK, MAX_NB_GPIO_PER_BANK);
		else
			chip->ngpio = ngpio;
	}

	names = FUNC12(&pdev->dev, chip->ngpio, sizeof(char *),
			     GFP_KERNEL);

	if (!names) {
		ret = -ENOMEM;
		goto clk_enable_err;
	}

	for (i = 0; i < chip->ngpio; i++)
		names[i] = FUNC16(GFP_KERNEL, "pio%c%d", alias_idx + 'A', i);

	chip->names = (const char *const *)names;

	range = &at91_chip->range;
	range->name = chip->label;
	range->id = alias_idx;
	range->pin_base = range->base = range->id * MAX_NB_GPIO_PER_BANK;

	range->npins = chip->ngpio;
	range->gc = chip;

	ret = FUNC14(chip, at91_chip);
	if (ret)
		goto gpiochip_add_err;

	gpio_chips[alias_idx] = at91_chip;
	gpio_banks = FUNC17(gpio_banks, alias_idx + 1);

	ret = FUNC4(pdev, at91_chip);
	if (ret)
		goto irq_setup_err;

	FUNC8(&pdev->dev, "at address %p\n", at91_chip->regbase);

	return 0;

irq_setup_err:
	FUNC15(chip);
gpiochip_add_err:
clk_enable_err:
	FUNC5(at91_chip->clock);
err:
	FUNC7(&pdev->dev, "Failure %i for GPIO %i\n", ret, alias_idx);

	return ret;
}