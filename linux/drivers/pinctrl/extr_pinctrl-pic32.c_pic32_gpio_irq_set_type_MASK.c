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
typedef  int /*<<< orphan*/  u32 ;
struct pic32_gpio_bank {scalar_t__ reg_base; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CNCON_REG ; 
 int /*<<< orphan*/  CNEN_REG ; 
 int /*<<< orphan*/  CNNE_REG ; 
 int EINVAL ; 
#define  IRQ_TYPE_EDGE_BOTH 130 
#define  IRQ_TYPE_EDGE_FALLING 129 
#define  IRQ_TYPE_EDGE_RISING 128 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIC32_CNCON_EDGE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*,int /*<<< orphan*/ ) ; 
 struct pic32_gpio_bank* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct irq_data *data, unsigned int type)
{
	struct pic32_gpio_bank *bank = FUNC4(data);
	u32 mask = FUNC0(data->hwirq);

	switch (type & IRQ_TYPE_SENSE_MASK) {
	case IRQ_TYPE_EDGE_RISING:
		/* enable RISE */
		FUNC5(mask, bank->reg_base + FUNC2(CNEN_REG));
		/* disable FALL */
		FUNC5(mask, bank->reg_base + FUNC1(CNNE_REG));
		/* enable EDGE */
		FUNC5(FUNC0(PIC32_CNCON_EDGE), bank->reg_base + FUNC2(CNCON_REG));
		break;
	case IRQ_TYPE_EDGE_FALLING:
		/* disable RISE */
		FUNC5(mask, bank->reg_base + FUNC1(CNEN_REG));
		/* enable FALL */
		FUNC5(mask, bank->reg_base + FUNC2(CNNE_REG));
		/* enable EDGE */
		FUNC5(FUNC0(PIC32_CNCON_EDGE), bank->reg_base + FUNC2(CNCON_REG));
		break;
	case IRQ_TYPE_EDGE_BOTH:
		/* enable RISE */
		FUNC5(mask, bank->reg_base + FUNC2(CNEN_REG));
		/* enable FALL */
		FUNC5(mask, bank->reg_base + FUNC2(CNNE_REG));
		/* enable EDGE */
		FUNC5(FUNC0(PIC32_CNCON_EDGE), bank->reg_base + FUNC2(CNCON_REG));
		break;
	default:
		return -EINVAL;
	}

	FUNC3(data, handle_edge_irq);

	return 0;
}