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
struct samsung_pin_bank {unsigned long eint_offset; scalar_t__ eint_base; } ;
struct irq_data {unsigned int hwirq; } ;
struct irq_chip {int dummy; } ;
struct exynos_irq_chip {unsigned long eint_con; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int EXYNOS_EINT_CON_LEN ; 
 unsigned int EXYNOS_EINT_CON_MASK ; 
 unsigned int EXYNOS_EINT_EDGE_BOTH ; 
 unsigned int EXYNOS_EINT_EDGE_FALLING ; 
 unsigned int EXYNOS_EINT_EDGE_RISING ; 
 unsigned int EXYNOS_EINT_LEVEL_HIGH ; 
 unsigned int EXYNOS_EINT_LEVEL_LOW ; 
#define  IRQ_TYPE_EDGE_BOTH 132 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct irq_chip* FUNC0 (struct irq_data*) ; 
 struct samsung_pin_bank* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 struct exynos_irq_chip* FUNC5 (struct irq_chip*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct irq_data *irqd, unsigned int type)
{
	struct irq_chip *chip = FUNC0(irqd);
	struct exynos_irq_chip *our_chip = FUNC5(chip);
	struct samsung_pin_bank *bank = FUNC1(irqd);
	unsigned int shift = EXYNOS_EINT_CON_LEN * irqd->hwirq;
	unsigned int con, trig_type;
	unsigned long reg_con = our_chip->eint_con + bank->eint_offset;

	switch (type) {
	case IRQ_TYPE_EDGE_RISING:
		trig_type = EXYNOS_EINT_EDGE_RISING;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		trig_type = EXYNOS_EINT_EDGE_FALLING;
		break;
	case IRQ_TYPE_EDGE_BOTH:
		trig_type = EXYNOS_EINT_EDGE_BOTH;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		trig_type = EXYNOS_EINT_LEVEL_HIGH;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		trig_type = EXYNOS_EINT_LEVEL_LOW;
		break;
	default:
		FUNC3("unsupported external interrupt type\n");
		return -EINVAL;
	}

	if (type & IRQ_TYPE_EDGE_BOTH)
		FUNC2(irqd, handle_edge_irq);
	else
		FUNC2(irqd, handle_level_irq);

	con = FUNC4(bank->eint_base + reg_con);
	con &= ~(EXYNOS_EINT_CON_MASK << shift);
	con |= trig_type << shift;
	FUNC6(con, bank->eint_base + reg_con);

	return 0;
}