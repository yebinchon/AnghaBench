#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct pinctrl_pin_desc {int number; char* name; } ;
struct of_device_id {struct atmel_pioctrl_data* data; } ;
struct atmel_pioctrl_data {int nbanks; } ;
struct atmel_pioctrl {int nbanks; int npins; char const** group_names; TYPE_2__* irq_domain; int /*<<< orphan*/  clk; TYPE_5__* gpio_chip; int /*<<< orphan*/  pinctrl_dev; int /*<<< orphan*/ * irqs; void* pm_suspend_backup; void* pm_wakeup_sources; TYPE_1__** pins; struct atmel_group* groups; int /*<<< orphan*/  reg_base; int /*<<< orphan*/  node; struct device* dev; } ;
struct atmel_group {char const* name; int pin; } ;
struct TYPE_14__ {int npins; int /*<<< orphan*/  custom_params; int /*<<< orphan*/  num_custom_params; struct pinctrl_pin_desc* pins; } ;
struct TYPE_13__ {int ngpio; char const** names; struct device* parent; int /*<<< orphan*/  label; int /*<<< orphan*/  of_node; } ;
struct TYPE_12__ {char* name; } ;
struct TYPE_11__ {int pin_id; unsigned int bank; unsigned int line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 int ATMEL_PIO_NPINS_PER_BANK ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmel_custom_bindings ; 
 TYPE_5__ atmel_gpio_chip ; 
 int /*<<< orphan*/  atmel_gpio_irq_chip ; 
 int /*<<< orphan*/  atmel_gpio_irq_handler ; 
 int /*<<< orphan*/  atmel_pctrl_of_match ; 
 TYPE_8__ atmel_pinctrl_desc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,struct resource*) ; 
 void* FUNC13 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC14 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct device*,TYPE_8__*,struct atmel_pioctrl*) ; 
 int FUNC16 (TYPE_5__*,struct atmel_pioctrl*) ; 
 int FUNC17 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int FUNC19 (TYPE_2__*,int) ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  irq_domain_simple_ops ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int,struct atmel_pioctrl*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,struct atmel_pioctrl*) ; 
 char* FUNC26 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 struct of_device_id* FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC28 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (struct platform_device*,struct atmel_pioctrl*) ; 

__attribute__((used)) static int FUNC30(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct pinctrl_pin_desc	*pin_desc;
	const char **group_names;
	const struct of_device_id *match;
	int i, ret;
	struct resource	*res;
	struct atmel_pioctrl *atmel_pioctrl;
	const struct atmel_pioctrl_data *atmel_pioctrl_data;

	atmel_pioctrl = FUNC14(dev, sizeof(*atmel_pioctrl), GFP_KERNEL);
	if (!atmel_pioctrl)
		return -ENOMEM;
	atmel_pioctrl->dev = dev;
	atmel_pioctrl->node = dev->of_node;
	FUNC29(pdev, atmel_pioctrl);

	match = FUNC27(atmel_pctrl_of_match, dev->of_node);
	if (!match) {
		FUNC8(dev, "unknown compatible string\n");
		return -ENODEV;
	}
	atmel_pioctrl_data = match->data;
	atmel_pioctrl->nbanks = atmel_pioctrl_data->nbanks;
	atmel_pioctrl->npins = atmel_pioctrl->nbanks * ATMEL_PIO_NPINS_PER_BANK;

	res = FUNC28(pdev, IORESOURCE_MEM, 0);
	atmel_pioctrl->reg_base = FUNC12(dev, res);
	if (FUNC3(atmel_pioctrl->reg_base))
		return -EINVAL;

	atmel_pioctrl->clk = FUNC11(dev, NULL);
	if (FUNC3(atmel_pioctrl->clk)) {
		FUNC8(dev, "failed to get clock\n");
		return FUNC4(atmel_pioctrl->clk);
	}

	atmel_pioctrl->pins = FUNC13(dev,
					   atmel_pioctrl->npins,
					   sizeof(*atmel_pioctrl->pins),
					   GFP_KERNEL);
	if (!atmel_pioctrl->pins)
		return -ENOMEM;

	pin_desc = FUNC13(dev, atmel_pioctrl->npins, sizeof(*pin_desc),
				GFP_KERNEL);
	if (!pin_desc)
		return -ENOMEM;
	atmel_pinctrl_desc.pins = pin_desc;
	atmel_pinctrl_desc.npins = atmel_pioctrl->npins;
	atmel_pinctrl_desc.num_custom_params = FUNC0(atmel_custom_bindings);
	atmel_pinctrl_desc.custom_params = atmel_custom_bindings;

	/* One pin is one group since a pin can achieve all functions. */
	group_names = FUNC13(dev,
				   atmel_pioctrl->npins, sizeof(*group_names),
				   GFP_KERNEL);
	if (!group_names)
		return -ENOMEM;
	atmel_pioctrl->group_names = group_names;

	atmel_pioctrl->groups = FUNC13(&pdev->dev,
			atmel_pioctrl->npins, sizeof(*atmel_pioctrl->groups),
			GFP_KERNEL);
	if (!atmel_pioctrl->groups)
		return -ENOMEM;
	for (i = 0 ; i < atmel_pioctrl->npins; i++) {
		struct atmel_group *group = atmel_pioctrl->groups + i;
		unsigned bank = FUNC1(i);
		unsigned line = FUNC2(i);

		atmel_pioctrl->pins[i] = FUNC14(dev,
				sizeof(**atmel_pioctrl->pins), GFP_KERNEL);
		if (!atmel_pioctrl->pins[i])
			return -ENOMEM;

		atmel_pioctrl->pins[i]->pin_id = i;
		atmel_pioctrl->pins[i]->bank = bank;
		atmel_pioctrl->pins[i]->line = line;

		pin_desc[i].number = i;
		/* Pin naming convention: P(bank_name)(bank_pin_number). */
		pin_desc[i].name = FUNC26(GFP_KERNEL, "P%c%d",
					     bank + 'A', line);

		group->name = group_names[i] = pin_desc[i].name;
		group->pin = pin_desc[i].number;

		FUNC7(dev, "pin_id=%u, bank=%u, line=%u", i, bank, line);
	}

	atmel_pioctrl->gpio_chip = &atmel_gpio_chip;
	atmel_pioctrl->gpio_chip->of_node = dev->of_node;
	atmel_pioctrl->gpio_chip->ngpio = atmel_pioctrl->npins;
	atmel_pioctrl->gpio_chip->label = FUNC10(dev);
	atmel_pioctrl->gpio_chip->parent = dev;
	atmel_pioctrl->gpio_chip->names = atmel_pioctrl->group_names;

	atmel_pioctrl->pm_wakeup_sources = FUNC13(dev,
			atmel_pioctrl->nbanks,
			sizeof(*atmel_pioctrl->pm_wakeup_sources),
			GFP_KERNEL);
	if (!atmel_pioctrl->pm_wakeup_sources)
		return -ENOMEM;

	atmel_pioctrl->pm_suspend_backup = FUNC13(dev,
			atmel_pioctrl->nbanks,
			sizeof(*atmel_pioctrl->pm_suspend_backup),
			GFP_KERNEL);
	if (!atmel_pioctrl->pm_suspend_backup)
		return -ENOMEM;

	atmel_pioctrl->irqs = FUNC13(dev,
					   atmel_pioctrl->nbanks,
					   sizeof(*atmel_pioctrl->irqs),
					   GFP_KERNEL);
	if (!atmel_pioctrl->irqs)
		return -ENOMEM;

	/* There is one controller but each bank has its own irq line. */
	for (i = 0; i < atmel_pioctrl->nbanks; i++) {
		res = FUNC28(pdev, IORESOURCE_IRQ, i);
		if (!res) {
			FUNC8(dev, "missing irq resource for group %c\n",
				'A' + i);
			return -EINVAL;
		}
		atmel_pioctrl->irqs[i] = res->start;
		FUNC22(res->start, atmel_gpio_irq_handler);
		FUNC25(res->start, atmel_pioctrl);
		FUNC7(dev, "bank %i: irq=%pr\n", i, res);
	}

	atmel_pioctrl->irq_domain = FUNC20(dev->of_node,
			atmel_pioctrl->gpio_chip->ngpio,
			&irq_domain_simple_ops, NULL);
	if (!atmel_pioctrl->irq_domain) {
		FUNC8(dev, "can't add the irq domain\n");
		return -ENODEV;
	}
	atmel_pioctrl->irq_domain->name = "atmel gpio";

	for (i = 0; i < atmel_pioctrl->npins; i++) {
		int irq = FUNC19(atmel_pioctrl->irq_domain, i);

		FUNC23(irq, &atmel_gpio_irq_chip,
					 handle_simple_irq);
		FUNC24(irq, atmel_pioctrl);
		FUNC7(dev,
			"atmel gpio irq domain: hwirq: %d, linux irq: %d\n",
			i, irq);
	}

	ret = FUNC6(atmel_pioctrl->clk);
	if (ret) {
		FUNC8(dev, "failed to prepare and enable clock\n");
		goto clk_prepare_enable_error;
	}

	atmel_pioctrl->pinctrl_dev = FUNC15(&pdev->dev,
							   &atmel_pinctrl_desc,
							   atmel_pioctrl);
	if (FUNC3(atmel_pioctrl->pinctrl_dev)) {
		ret = FUNC4(atmel_pioctrl->pinctrl_dev);
		FUNC8(dev, "pinctrl registration failed\n");
		goto clk_unprep;
	}

	ret = FUNC16(atmel_pioctrl->gpio_chip, atmel_pioctrl);
	if (ret) {
		FUNC8(dev, "failed to add gpiochip\n");
		goto clk_unprep;
	}

	ret = FUNC17(atmel_pioctrl->gpio_chip, FUNC10(dev),
				     0, 0, atmel_pioctrl->gpio_chip->ngpio);
	if (ret) {
		FUNC8(dev, "failed to add gpio pin range\n");
		goto gpiochip_add_pin_range_error;
	}

	FUNC9(&pdev->dev, "atmel pinctrl initialized\n");

	return 0;

gpiochip_add_pin_range_error:
	FUNC18(atmel_pioctrl->gpio_chip);

clk_unprep:
	FUNC5(atmel_pioctrl->clk);

clk_prepare_enable_error:
	FUNC21(atmel_pioctrl->irq_domain);

	return ret;
}