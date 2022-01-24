#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct npcm7xx_gpio {scalar_t__ base; int /*<<< orphan*/  gc; } ;
struct irq_data {TYPE_1__* chip; int /*<<< orphan*/  irq; int /*<<< orphan*/  hwirq; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent_device; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_BOTH 132 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 scalar_t__ NPCM7XX_GP_N_EVBE ; 
 scalar_t__ NPCM7XX_GP_N_EVTYP ; 
 scalar_t__ NPCM7XX_GP_N_POL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct npcm7xx_gpio* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct irq_data *d, unsigned int type)
{
	struct npcm7xx_gpio *bank =
		FUNC2(FUNC3(d));
	unsigned int gpio = FUNC0(d->hwirq);

	FUNC1(d->chip->parent_device, "setirqtype: %u.%u = %u\n", gpio,
		d->irq, type);
	switch (type) {
	case IRQ_TYPE_EDGE_RISING:
		FUNC1(d->chip->parent_device, "edge.rising\n");
		FUNC5(&bank->gc, bank->base + NPCM7XX_GP_N_EVBE, gpio);
		FUNC5(&bank->gc, bank->base + NPCM7XX_GP_N_POL, gpio);
		break;
	case IRQ_TYPE_EDGE_FALLING:
		FUNC1(d->chip->parent_device, "edge.falling\n");
		FUNC5(&bank->gc, bank->base + NPCM7XX_GP_N_EVBE, gpio);
		FUNC6(&bank->gc, bank->base + NPCM7XX_GP_N_POL, gpio);
		break;
	case IRQ_TYPE_EDGE_BOTH:
		FUNC1(d->chip->parent_device, "edge.both\n");
		FUNC6(&bank->gc, bank->base + NPCM7XX_GP_N_EVBE, gpio);
		break;
	case IRQ_TYPE_LEVEL_LOW:
		FUNC1(d->chip->parent_device, "level.low\n");
		FUNC6(&bank->gc, bank->base + NPCM7XX_GP_N_POL, gpio);
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		FUNC1(d->chip->parent_device, "level.high\n");
		FUNC5(&bank->gc, bank->base + NPCM7XX_GP_N_POL, gpio);
		break;
	default:
		FUNC1(d->chip->parent_device, "invalid irq type\n");
		return -EINVAL;
	}

	if (type & (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW)) {
		FUNC5(&bank->gc, bank->base + NPCM7XX_GP_N_EVTYP, gpio);
		FUNC4(d, handle_level_irq);
	} else if (type & (IRQ_TYPE_EDGE_BOTH | IRQ_TYPE_EDGE_RISING
			   | IRQ_TYPE_EDGE_FALLING)) {
		FUNC6(&bank->gc, bank->base + NPCM7XX_GP_N_EVTYP, gpio);
		FUNC4(d, handle_edge_irq);
	}

	return 0;
}