#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct resource {int dummy; } ;
struct TYPE_9__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_8__ {struct device_node* of_node; TYPE_5__* parent; } ;
struct pic32_gpio_bank {int /*<<< orphan*/  irq_chip; TYPE_1__ gpio_chip; int /*<<< orphan*/  clk; int /*<<< orphan*/  reg_base; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct pic32_gpio_bank*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,struct resource*) ; 
 int FUNC7 (TYPE_1__*,struct pic32_gpio_bank*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 scalar_t__ FUNC11 (struct device_node*,char*,size_t*) ; 
 struct pic32_gpio_bank* pic32_gpio_banks ; 
 int /*<<< orphan*/  pic32_gpio_irq_handler ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct pic32_gpio_bank *bank;
	u32 id;
	int irq, ret;
	struct resource *res;

	if (FUNC11(np, "microchip,gpio-bank", &id)) {
		FUNC4(&pdev->dev, "microchip,gpio-bank property not found\n");
		return -EINVAL;
	}

	if (id >= FUNC0(pic32_gpio_banks)) {
		FUNC4(&pdev->dev, "invalid microchip,gpio-bank property\n");
		return -EINVAL;
	}

	bank = &pic32_gpio_banks[id];

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	bank->reg_base = FUNC6(&pdev->dev, res);
	if (FUNC1(bank->reg_base))
		return FUNC2(bank->reg_base);

	irq = FUNC12(pdev, 0);
	if (irq < 0)
		return irq;

	bank->clk = FUNC5(&pdev->dev, NULL);
	if (FUNC1(bank->clk)) {
		ret = FUNC2(bank->clk);
		FUNC4(&pdev->dev, "clk get failed\n");
		return ret;
	}

	ret = FUNC3(bank->clk);
	if (ret) {
		FUNC4(&pdev->dev, "clk enable failed\n");
		return ret;
	}

	bank->gpio_chip.parent = &pdev->dev;
	bank->gpio_chip.of_node = np;
	ret = FUNC7(&bank->gpio_chip, bank);
	if (ret < 0) {
		FUNC4(&pdev->dev, "Failed to add GPIO chip %u: %d\n",
			id, ret);
		return ret;
	}

	ret = FUNC8(&bank->gpio_chip, &bank->irq_chip,
				0, handle_level_irq, IRQ_TYPE_NONE);
	if (ret < 0) {
		FUNC4(&pdev->dev, "Failed to add IRQ chip %u: %d\n",
			id, ret);
		FUNC9(&bank->gpio_chip);
		return ret;
	}

	FUNC10(&bank->gpio_chip, &bank->irq_chip,
				     irq, pic32_gpio_irq_handler);

	return 0;
}