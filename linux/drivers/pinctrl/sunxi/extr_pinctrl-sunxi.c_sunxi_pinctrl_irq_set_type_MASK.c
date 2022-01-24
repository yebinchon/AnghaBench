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
typedef  int u8 ;
typedef  int u32 ;
struct sunxi_pinctrl {int membase; int /*<<< orphan*/  lock; int /*<<< orphan*/  desc; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 int EINVAL ; 
 int IRQ_CFG_IRQ_MASK ; 
 int IRQ_EDGE_BOTH ; 
 int IRQ_EDGE_FALLING ; 
 int IRQ_EDGE_RISING ; 
 int IRQ_LEVEL_HIGH ; 
 int IRQ_LEVEL_LOW ; 
#define  IRQ_TYPE_EDGE_BOTH 132 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 unsigned int IRQ_TYPE_LEVEL_MASK ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_fasteoi_irq ; 
 struct sunxi_pinctrl* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sunxi_pinctrl_edge_irq_chip ; 
 int /*<<< orphan*/  sunxi_pinctrl_level_irq_chip ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static int FUNC8(struct irq_data *d, unsigned int type)
{
	struct sunxi_pinctrl *pctl = FUNC0(d);
	u32 reg = FUNC6(pctl->desc, d->hwirq);
	u8 index = FUNC5(d->hwirq);
	unsigned long flags;
	u32 regval;
	u8 mode;

	switch (type) {
	case IRQ_TYPE_EDGE_RISING:
		mode = IRQ_EDGE_RISING;
		break;
	case IRQ_TYPE_EDGE_FALLING:
		mode = IRQ_EDGE_FALLING;
		break;
	case IRQ_TYPE_EDGE_BOTH:
		mode = IRQ_EDGE_BOTH;
		break;
	case IRQ_TYPE_LEVEL_HIGH:
		mode = IRQ_LEVEL_HIGH;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		mode = IRQ_LEVEL_LOW;
		break;
	default:
		return -EINVAL;
	}

	FUNC2(&pctl->lock, flags);

	if (type & IRQ_TYPE_LEVEL_MASK)
		FUNC1(d, &sunxi_pinctrl_level_irq_chip,
						 handle_fasteoi_irq, NULL);
	else
		FUNC1(d, &sunxi_pinctrl_edge_irq_chip,
						 handle_edge_irq, NULL);

	regval = FUNC4(pctl->membase + reg);
	regval &= ~(IRQ_CFG_IRQ_MASK << index);
	FUNC7(regval | (mode << index), pctl->membase + reg);

	FUNC3(&pctl->lock, flags);

	return 0;
}