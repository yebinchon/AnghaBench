#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct gpio_chip {int base; int ngpio; int of_gpio_n_cells; TYPE_1__* parent; struct device_node* of_node; int /*<<< orphan*/  label; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  free; int /*<<< orphan*/  request; } ;
struct device_node {int /*<<< orphan*/  name; } ;
struct atlas7_gpio_chip {int nbank; struct atlas7_gpio_bank* banks; struct gpio_chip chip; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  clk; } ;
struct atlas7_gpio_bank {int gpio_offset; int irq; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atlas7_gpio_chip*,int) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int NGPIO_OF_BANK ; 
 int /*<<< orphan*/  atlas7_gpio_direction_input ; 
 int /*<<< orphan*/  atlas7_gpio_direction_output ; 
 int /*<<< orphan*/  atlas7_gpio_free ; 
 int /*<<< orphan*/  atlas7_gpio_get_value ; 
 int /*<<< orphan*/  atlas7_gpio_handle_irq ; 
 int /*<<< orphan*/  atlas7_gpio_irq_chip ; 
 int /*<<< orphan*/  atlas7_gpio_request ; 
 int /*<<< orphan*/  atlas7_gpio_set_value ; 
 int /*<<< orphan*/  banks ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 struct atlas7_gpio_chip* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct gpio_chip*,struct atlas7_gpio_chip*) ; 
 int FUNC7 (struct gpio_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gpio_chip*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device_node*,int) ; 
 int FUNC13 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct atlas7_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct atlas7_gpio_chip*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct atlas7_gpio_chip *a7gc;
	struct gpio_chip *chip;
	u32 nbank;
	int ret, idx;

	ret = FUNC13(np, "gpio-banks", &nbank);
	if (ret) {
		FUNC3(&pdev->dev,
			"Could not find GPIO bank info,ret=%d!\n",
			ret);
		return ret;
	}

	/* retrieve gpio descriptor data */
	a7gc = FUNC5(&pdev->dev, FUNC16(a7gc, banks, nbank),
			    GFP_KERNEL);
	if (!a7gc)
		return -ENOMEM;

	/* Get Gpio clk */
	a7gc->clk = FUNC10(np, 0);
	if (!FUNC1(a7gc->clk)) {
		ret = FUNC2(a7gc->clk);
		if (ret) {
			FUNC3(&pdev->dev,
				"Could not enable clock!\n");
			return ret;
		}
	}

	/* Get Gpio Registers */
	a7gc->reg = FUNC11(np, 0);
	if (!a7gc->reg) {
		FUNC3(&pdev->dev, "Could not map GPIO Registers!\n");
		return -ENOMEM;
	}

	a7gc->nbank = nbank;
	FUNC15(&a7gc->lock);

	/* Setup GPIO Chip */
	chip = &a7gc->chip;
	chip->request = atlas7_gpio_request;
	chip->free = atlas7_gpio_free;
	chip->direction_input = atlas7_gpio_direction_input;
	chip->get = atlas7_gpio_get_value;
	chip->direction_output = atlas7_gpio_direction_output;
	chip->set = atlas7_gpio_set_value;
	chip->base = -1;
	/* Each chip can support 32 pins at one bank */
	chip->ngpio = NGPIO_OF_BANK * nbank;
	chip->label = FUNC9(np->name, GFP_KERNEL);
	chip->of_node = np;
	chip->of_gpio_n_cells = 2;
	chip->parent = &pdev->dev;

	/* Add gpio chip to system */
	ret = FUNC6(chip, a7gc);
	if (ret) {
		FUNC3(&pdev->dev,
			"%pOF: error in probe function with status %d\n",
			np, ret);
		goto failed;
	}

	/* Add gpio chip to irq subsystem */
	ret =  FUNC7(chip, &atlas7_gpio_irq_chip,
			0, handle_level_irq, IRQ_TYPE_NONE);
	if (ret) {
		FUNC3(&pdev->dev,
			"could not connect irqchip to gpiochip\n");
		goto failed;
	}

	for (idx = 0; idx < nbank; idx++) {
		struct atlas7_gpio_bank *bank;

		bank = &a7gc->banks[idx];
		/* Set ctrl registers' base of this bank */
		bank->base = FUNC0(a7gc, idx);
		bank->gpio_offset = idx * NGPIO_OF_BANK;

		/* Get interrupt number from DTS */
		ret = FUNC12(np, idx);
		if (ret <= 0) {
			FUNC3(&pdev->dev,
				"Unable to find IRQ number. ret=%d\n", ret);
			if (!ret)
				ret = -ENXIO;
			goto failed;
		}
		bank->irq = ret;

		FUNC8(chip, &atlas7_gpio_irq_chip,
					bank->irq, atlas7_gpio_handle_irq);
	}

	FUNC14(pdev, a7gc);
	FUNC4(&pdev->dev, "add to system.\n");
	return 0;
failed:
	return ret;
}