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
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; int /*<<< orphan*/  id; } ;
struct gpio_chip {int can_sleep; struct device_node* of_node; scalar_t__ ngpio; scalar_t__ base; int /*<<< orphan*/  owner; int /*<<< orphan*/  dbg_show; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get_direction; int /*<<< orphan*/  free; int /*<<< orphan*/  request; } ;
struct irq_chip {int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/  irq_shutdown; int /*<<< orphan*/  irq_startup; int /*<<< orphan*/  irq_set_wake; int /*<<< orphan*/  irq_set_type; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  irq_ack; } ;
struct nmk_gpio_chip {int parent_irq; int latent_parent_irq; int sleepmode; scalar_t__ addr; struct gpio_chip chip; int /*<<< orphan*/  clk; int /*<<< orphan*/  lowemi; struct irq_chip irqchip; int /*<<< orphan*/  lock; int /*<<< orphan*/  bank; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQCHIP_MASK_ON_SUSPEND ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ FUNC0 (struct nmk_gpio_chip*) ; 
 scalar_t__ NMK_GPIO_LOWEMI ; 
 int FUNC1 (struct nmk_gpio_chip*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,scalar_t__) ; 
 int FUNC6 (struct gpio_chip*,struct nmk_gpio_chip*) ; 
 int /*<<< orphan*/  gpiochip_generic_free ; 
 int /*<<< orphan*/  gpiochip_generic_request ; 
 int FUNC7 (struct gpio_chip*,struct irq_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct gpio_chip*,struct irq_chip*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  nmk_gpio_dbg_show ; 
 int /*<<< orphan*/  nmk_gpio_get_dir ; 
 int /*<<< orphan*/  nmk_gpio_get_input ; 
 int /*<<< orphan*/  nmk_gpio_irq_ack ; 
 int /*<<< orphan*/  nmk_gpio_irq_handler ; 
 int /*<<< orphan*/  nmk_gpio_irq_mask ; 
 int /*<<< orphan*/  nmk_gpio_irq_set_type ; 
 int /*<<< orphan*/  nmk_gpio_irq_set_wake ; 
 int /*<<< orphan*/  nmk_gpio_irq_shutdown ; 
 int /*<<< orphan*/  nmk_gpio_irq_startup ; 
 int /*<<< orphan*/  nmk_gpio_irq_unmask ; 
 int /*<<< orphan*/  nmk_gpio_latent_irq_handler ; 
 int /*<<< orphan*/  nmk_gpio_make_input ; 
 int /*<<< orphan*/  nmk_gpio_make_output ; 
 struct nmk_gpio_chip* FUNC11 (struct device_node*,struct platform_device*) ; 
 int /*<<< orphan*/  nmk_gpio_set_output ; 
 int FUNC12 (struct device_node*,char*) ; 
 int FUNC13 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct nmk_gpio_chip*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct platform_device *dev)
{
	struct device_node *np = dev->dev.of_node;
	struct nmk_gpio_chip *nmk_chip;
	struct gpio_chip *chip;
	struct irq_chip *irqchip;
	int latent_irq;
	bool supports_sleepmode;
	int irq;
	int ret;

	nmk_chip = FUNC11(np, dev);
	if (FUNC0(nmk_chip)) {
		FUNC4(&dev->dev, "could not populate nmk chip struct\n");
		return FUNC1(nmk_chip);
	}

	supports_sleepmode =
		FUNC12(np, "st,supports-sleepmode");

	/* Correct platform device ID */
	dev->id = nmk_chip->bank;

	irq = FUNC13(dev, 0);
	if (irq < 0)
		return irq;

	/* It's OK for this IRQ not to be present */
	latent_irq = FUNC13(dev, 1);

	/*
	 * The virt address in nmk_chip->addr is in the nomadik register space,
	 * so we can simply convert the resource address, without remapping
	 */
	nmk_chip->parent_irq = irq;
	nmk_chip->latent_parent_irq = latent_irq;
	nmk_chip->sleepmode = supports_sleepmode;
	FUNC16(&nmk_chip->lock);

	chip = &nmk_chip->chip;
	chip->request = gpiochip_generic_request;
	chip->free = gpiochip_generic_free;
	chip->get_direction = nmk_gpio_get_dir;
	chip->direction_input = nmk_gpio_make_input;
	chip->get = nmk_gpio_get_input;
	chip->direction_output = nmk_gpio_make_output;
	chip->set = nmk_gpio_set_output;
	chip->dbg_show = nmk_gpio_dbg_show;
	chip->can_sleep = false;
	chip->owner = THIS_MODULE;

	irqchip = &nmk_chip->irqchip;
	irqchip->irq_ack = nmk_gpio_irq_ack;
	irqchip->irq_mask = nmk_gpio_irq_mask;
	irqchip->irq_unmask = nmk_gpio_irq_unmask;
	irqchip->irq_set_type = nmk_gpio_irq_set_type;
	irqchip->irq_set_wake = nmk_gpio_irq_set_wake;
	irqchip->irq_startup = nmk_gpio_irq_startup;
	irqchip->irq_shutdown = nmk_gpio_irq_shutdown;
	irqchip->flags = IRQCHIP_MASK_ON_SUSPEND;
	irqchip->name = FUNC10(GFP_KERNEL, "nmk%u-%u-%u",
				  dev->id,
				  chip->base,
				  chip->base + chip->ngpio - 1);

	FUNC3(nmk_chip->clk);
	nmk_chip->lowemi = FUNC15(nmk_chip->addr + NMK_GPIO_LOWEMI);
	FUNC2(nmk_chip->clk);
	chip->of_node = np;

	ret = FUNC6(chip, nmk_chip);
	if (ret)
		return ret;

	FUNC14(dev, nmk_chip);

	/*
	 * Let the generic code handle this edge IRQ, the the chained
	 * handler will perform the actual work of handling the parent
	 * interrupt.
	 */
	ret = FUNC7(chip,
				   irqchip,
				   0,
				   handle_edge_irq,
				   IRQ_TYPE_NONE);
	if (ret) {
		FUNC4(&dev->dev, "could not add irqchip\n");
		FUNC8(&nmk_chip->chip);
		return -ENODEV;
	}
	/* Then register the chain on the parent IRQ */
	FUNC9(chip,
				     irqchip,
				     nmk_chip->parent_irq,
				     nmk_gpio_irq_handler);
	if (nmk_chip->latent_parent_irq > 0)
		FUNC9(chip,
					     irqchip,
					     nmk_chip->latent_parent_irq,
					     nmk_gpio_latent_irq_handler);

	FUNC5(&dev->dev, "at address %p\n", nmk_chip->addr);

	return 0;
}