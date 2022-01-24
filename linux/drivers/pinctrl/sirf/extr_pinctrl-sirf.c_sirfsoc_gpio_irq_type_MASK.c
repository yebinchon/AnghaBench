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
typedef  int u32 ;
struct TYPE_2__ {int regs; } ;
struct sirfsoc_gpio_chip {int /*<<< orphan*/  lock; TYPE_1__ chip; } ;
struct sirfsoc_gpio_bank {int /*<<< orphan*/  id; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
#define  IRQ_TYPE_EDGE_BOTH 133 
#define  IRQ_TYPE_EDGE_FALLING 132 
#define  IRQ_TYPE_EDGE_RISING 131 
#define  IRQ_TYPE_LEVEL_HIGH 130 
#define  IRQ_TYPE_LEVEL_LOW 129 
#define  IRQ_TYPE_NONE 128 
 int SIRFSOC_GPIO_CTL_INTR_HIGH_MASK ; 
 int SIRFSOC_GPIO_CTL_INTR_LOW_MASK ; 
 int SIRFSOC_GPIO_CTL_INTR_STS_MASK ; 
 int SIRFSOC_GPIO_CTL_INTR_TYPE_MASK ; 
 int SIRFSOC_GPIO_CTL_OUT_EN_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct sirfsoc_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int FUNC3 (int) ; 
 struct sirfsoc_gpio_bank* FUNC4 (struct sirfsoc_gpio_chip*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct irq_data *d, unsigned type)
{
	struct gpio_chip *gc = FUNC2(d);
	struct sirfsoc_gpio_chip *sgpio = FUNC1(gc);
	struct sirfsoc_gpio_bank *bank = FUNC4(sgpio, d->hwirq);
	int idx = FUNC5(d->hwirq);
	u32 val, offset;
	unsigned long flags;

	offset = FUNC0(bank->id, idx);

	FUNC6(&sgpio->lock, flags);

	val = FUNC3(sgpio->chip.regs + offset);
	val &= ~(SIRFSOC_GPIO_CTL_INTR_STS_MASK | SIRFSOC_GPIO_CTL_OUT_EN_MASK);

	switch (type) {
	case IRQ_TYPE_NONE:
		break;
	case IRQ_TYPE_EDGE_RISING:
		val |= SIRFSOC_GPIO_CTL_INTR_HIGH_MASK |
			SIRFSOC_GPIO_CTL_INTR_TYPE_MASK;
		val &= ~SIRFSOC_GPIO_CTL_INTR_LOW_MASK;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		val &= ~SIRFSOC_GPIO_CTL_INTR_HIGH_MASK;
		val |= SIRFSOC_GPIO_CTL_INTR_LOW_MASK |
			SIRFSOC_GPIO_CTL_INTR_TYPE_MASK;
		break;
	case IRQ_TYPE_EDGE_BOTH:
		val |= SIRFSOC_GPIO_CTL_INTR_HIGH_MASK |
			SIRFSOC_GPIO_CTL_INTR_LOW_MASK |
			SIRFSOC_GPIO_CTL_INTR_TYPE_MASK;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		val &= ~(SIRFSOC_GPIO_CTL_INTR_HIGH_MASK |
			SIRFSOC_GPIO_CTL_INTR_TYPE_MASK);
		val |= SIRFSOC_GPIO_CTL_INTR_LOW_MASK;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		val |= SIRFSOC_GPIO_CTL_INTR_HIGH_MASK;
		val &= ~(SIRFSOC_GPIO_CTL_INTR_LOW_MASK |
			SIRFSOC_GPIO_CTL_INTR_TYPE_MASK);
		break;
	}

	FUNC8(val, sgpio->chip.regs + offset);

	FUNC7(&sgpio->lock, flags);

	return 0;
}