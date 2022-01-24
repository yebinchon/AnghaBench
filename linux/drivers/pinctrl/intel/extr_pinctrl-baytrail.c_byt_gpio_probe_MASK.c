#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {scalar_t__ start; } ;
struct TYPE_4__ {int /*<<< orphan*/  init_valid_mask; } ;
struct gpio_chip {int base; int can_sleep; int /*<<< orphan*/  ngpio; TYPE_1__ irq; int /*<<< orphan*/ * parent; int /*<<< orphan*/  label; } ;
struct byt_gpio {TYPE_3__* pdev; TYPE_2__* soc_data; struct gpio_chip chip; int /*<<< orphan*/  saved_context; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  npins; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 struct gpio_chip byt_gpio_chip ; 
 int /*<<< orphan*/  byt_gpio_irq_handler ; 
 int /*<<< orphan*/  FUNC0 (struct byt_gpio*) ; 
 int /*<<< orphan*/  byt_init_irq_valid_mask ; 
 int /*<<< orphan*/  byt_irqchip ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct gpio_chip*,struct byt_gpio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gpio_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct gpio_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gpio_chip*,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_bad_irq ; 
 struct resource* FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct byt_gpio *vg)
{
	struct gpio_chip *gc;
	struct resource *irq_rc;
	int ret;

	/* Set up gpio chip */
	vg->chip	= byt_gpio_chip;
	gc		= &vg->chip;
	gc->label	= FUNC2(&vg->pdev->dev);
	gc->base	= -1;
	gc->can_sleep	= false;
	gc->parent	= &vg->pdev->dev;
	gc->ngpio	= vg->soc_data->npins;
	gc->irq.init_valid_mask	= byt_init_irq_valid_mask;

#ifdef CONFIG_PM_SLEEP
	vg->saved_context = devm_kcalloc(&vg->pdev->dev, gc->ngpio,
				       sizeof(*vg->saved_context), GFP_KERNEL);
	if (!vg->saved_context)
		return -ENOMEM;
#endif
	ret = FUNC3(&vg->pdev->dev, gc, vg);
	if (ret) {
		FUNC1(&vg->pdev->dev, "failed adding byt-gpio chip\n");
		return ret;
	}

	ret = FUNC5(&vg->chip, FUNC2(&vg->pdev->dev),
				     0, 0, vg->soc_data->npins);
	if (ret) {
		FUNC1(&vg->pdev->dev, "failed to add GPIO pin range\n");
		return ret;
	}

	/* set up interrupts  */
	irq_rc = FUNC8(vg->pdev, IORESOURCE_IRQ, 0);
	if (irq_rc && irq_rc->start) {
		FUNC0(vg);
		ret = FUNC6(gc, &byt_irqchip, 0,
					   handle_bad_irq, IRQ_TYPE_NONE);
		if (ret) {
			FUNC1(&vg->pdev->dev, "failed to add irqchip\n");
			return ret;
		}

		FUNC7(gc, &byt_irqchip,
					     (unsigned)irq_rc->start,
					     byt_gpio_irq_handler);
	}

	return ret;
}