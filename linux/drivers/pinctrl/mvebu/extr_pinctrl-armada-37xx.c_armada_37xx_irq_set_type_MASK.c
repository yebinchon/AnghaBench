#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct irq_data {int hwirq; int mask; } ;
struct gpio_chip {int dummy; } ;
struct armada_37xx_pinctrl {int base; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int GPIO_PER_REG ; 
 int INPUT_VAL ; 
 int IRQ_POL ; 
#define  IRQ_TYPE_EDGE_BOTH 130 
#define  IRQ_TYPE_EDGE_FALLING 129 
#define  IRQ_TYPE_EDGE_RISING 128 
 int /*<<< orphan*/  FUNC1 (int*,struct irq_data*) ; 
 struct armada_37xx_pinctrl* FUNC2 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct irq_data *d, unsigned int type)
{
	struct gpio_chip *chip = FUNC3(d);
	struct armada_37xx_pinctrl *info = FUNC2(chip);
	u32 val, reg = IRQ_POL;
	unsigned long flags;

	FUNC6(&info->irq_lock, flags);
	FUNC1(&reg, d);
	val = FUNC4(info->base + reg);
	switch (type) {
	case IRQ_TYPE_EDGE_RISING:
		val &= ~(FUNC0(d->hwirq % GPIO_PER_REG));
		break;
	case IRQ_TYPE_EDGE_FALLING:
		val |= (FUNC0(d->hwirq % GPIO_PER_REG));
		break;
	case IRQ_TYPE_EDGE_BOTH: {
		u32 in_val, in_reg = INPUT_VAL;

		FUNC1(&in_reg, d);
		FUNC5(info->regmap, in_reg, &in_val);

		/* Set initial polarity based on current input level. */
		if (in_val & d->mask)
			val |= d->mask;		/* falling */
		else
			val &= ~d->mask;	/* rising */
		break;
	}
	default:
		FUNC7(&info->irq_lock, flags);
		return -EINVAL;
	}
	FUNC8(val, info->base + reg);
	FUNC7(&info->irq_lock, flags);

	return 0;
}