#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_13__ {int base; int /*<<< orphan*/  of_node; int /*<<< orphan*/  owner; TYPE_5__* parent; int /*<<< orphan*/  label; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  free; int /*<<< orphan*/  request; int /*<<< orphan*/  ngpio; } ;
struct plgpio {int /*<<< orphan*/  clk; TYPE_1__ chip; int /*<<< orphan*/  lock; int /*<<< orphan*/  csave_regs; int /*<<< orphan*/  base; } ;
struct TYPE_14__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_5__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_GPIO_PER_REG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct plgpio* FUNC12 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_1__*,struct plgpio*) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int FUNC17 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC18 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,struct plgpio*) ; 
 int /*<<< orphan*/  plgpio_direction_input ; 
 int /*<<< orphan*/  plgpio_direction_output ; 
 int /*<<< orphan*/  plgpio_free ; 
 int /*<<< orphan*/  plgpio_get_value ; 
 int /*<<< orphan*/  plgpio_irq_handler ; 
 int /*<<< orphan*/  plgpio_irqchip ; 
 int FUNC20 (struct platform_device*,struct plgpio*) ; 
 int /*<<< orphan*/  plgpio_request ; 
 int /*<<< orphan*/  plgpio_set_value ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct plgpio *plgpio;
	struct resource *res;
	int ret, irq;

	plgpio = FUNC12(&pdev->dev, sizeof(*plgpio), GFP_KERNEL);
	if (!plgpio)
		return -ENOMEM;

	res = FUNC18(pdev, IORESOURCE_MEM, 0);
	plgpio->base = FUNC10(&pdev->dev, res);
	if (FUNC1(plgpio->base))
		return FUNC2(plgpio->base);

	ret = FUNC20(pdev, plgpio);
	if (ret) {
		FUNC5(&pdev->dev, "DT probe failed\n");
		return ret;
	}

	plgpio->clk = FUNC9(&pdev->dev, NULL);
	if (FUNC1(plgpio->clk))
		FUNC8(&pdev->dev, "clk_get() failed, work without it\n");

#ifdef CONFIG_PM_SLEEP
	plgpio->csave_regs = devm_kcalloc(&pdev->dev,
			DIV_ROUND_UP(plgpio->chip.ngpio, MAX_GPIO_PER_REG),
			sizeof(*plgpio->csave_regs),
			GFP_KERNEL);
	if (!plgpio->csave_regs)
		return -ENOMEM;
#endif

	FUNC19(pdev, plgpio);
	FUNC21(&plgpio->lock);

	plgpio->chip.base = -1;
	plgpio->chip.request = plgpio_request;
	plgpio->chip.free = plgpio_free;
	plgpio->chip.direction_input = plgpio_direction_input;
	plgpio->chip.direction_output = plgpio_direction_output;
	plgpio->chip.get = plgpio_get_value;
	plgpio->chip.set = plgpio_set_value;
	plgpio->chip.label = FUNC7(&pdev->dev);
	plgpio->chip.parent = &pdev->dev;
	plgpio->chip.owner = THIS_MODULE;
	plgpio->chip.of_node = pdev->dev.of_node;

	if (!FUNC1(plgpio->clk)) {
		ret = FUNC3(plgpio->clk);
		if (ret) {
			FUNC5(&pdev->dev, "clk prepare failed\n");
			return ret;
		}
	}

	ret = FUNC13(&plgpio->chip, plgpio);
	if (ret) {
		FUNC5(&pdev->dev, "unable to add gpio chip\n");
		goto unprepare_clk;
	}

	irq = FUNC17(pdev, 0);
	if (irq < 0) {
		FUNC6(&pdev->dev, "PLGPIO registered without IRQs\n");
		return 0;
	}

	ret = FUNC14(&plgpio->chip,
				   &plgpio_irqchip,
				   0,
				   handle_simple_irq,
				   IRQ_TYPE_NONE);
	if (ret) {
		FUNC5(&pdev->dev, "failed to add irqchip to gpiochip\n");
		goto remove_gpiochip;
	}

	FUNC16(&plgpio->chip,
				     &plgpio_irqchip,
				     irq,
				     plgpio_irq_handler);

	FUNC6(&pdev->dev, "PLGPIO registered with IRQs\n");

	return 0;

remove_gpiochip:
	FUNC6(&pdev->dev, "Remove gpiochip\n");
	FUNC15(&plgpio->chip);
unprepare_clk:
	if (!FUNC1(plgpio->clk))
		FUNC4(plgpio->clk);

	return ret;
}