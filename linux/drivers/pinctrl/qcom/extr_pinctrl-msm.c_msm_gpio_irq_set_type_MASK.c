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
struct msm_pingroup {int intr_detection_width; int intr_target_bit; int intr_target_kpss_val; int intr_raw_status_bit; int intr_detection_bit; int intr_polarity_bit; } ;
struct msm_pinctrl {int /*<<< orphan*/  lock; int /*<<< orphan*/  dual_edge_irqs; TYPE_1__* soc; } ;
struct irq_data {size_t hwirq; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {struct msm_pingroup* groups; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  IRQ_TYPE_EDGE_BOTH 132 
#define  IRQ_TYPE_EDGE_FALLING 131 
#define  IRQ_TYPE_EDGE_RISING 130 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 struct msm_pinctrl* FUNC3 (struct gpio_chip*) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct gpio_chip* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msm_pinctrl*,struct msm_pingroup const*,struct irq_data*) ; 
 int FUNC7 (struct msm_pinctrl*,struct msm_pingroup const*) ; 
 int FUNC8 (struct msm_pinctrl*,struct msm_pingroup const*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct msm_pinctrl*,struct msm_pingroup const*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct msm_pinctrl*,struct msm_pingroup const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct irq_data *d, unsigned int type)
{
	struct gpio_chip *gc = FUNC4(d);
	struct msm_pinctrl *pctrl = FUNC3(gc);
	const struct msm_pingroup *g;
	unsigned long flags;
	u32 val;

	g = &pctrl->soc->groups[d->hwirq];

	FUNC11(&pctrl->lock, flags);

	/*
	 * For hw without possibility of detecting both edges
	 */
	if (g->intr_detection_width == 1 && type == IRQ_TYPE_EDGE_BOTH)
		FUNC13(d->hwirq, pctrl->dual_edge_irqs);
	else
		FUNC2(d->hwirq, pctrl->dual_edge_irqs);

	/* Route interrupts to application cpu */
	val = FUNC8(pctrl, g);
	val &= ~(7 << g->intr_target_bit);
	val |= g->intr_target_kpss_val << g->intr_target_bit;
	FUNC10(val, pctrl, g);

	/* Update configuration for gpio.
	 * RAW_STATUS_EN is left on for all gpio irqs. Due to the
	 * internal circuitry of TLMM, toggling the RAW_STATUS
	 * could cause the INTR_STATUS to be set for EDGE interrupts.
	 */
	val = FUNC7(pctrl, g);
	val |= FUNC0(g->intr_raw_status_bit);
	if (g->intr_detection_width == 2) {
		val &= ~(3 << g->intr_detection_bit);
		val &= ~(1 << g->intr_polarity_bit);
		switch (type) {
		case IRQ_TYPE_EDGE_RISING:
			val |= 1 << g->intr_detection_bit;
			val |= FUNC0(g->intr_polarity_bit);
			break;
		case IRQ_TYPE_EDGE_FALLING:
			val |= 2 << g->intr_detection_bit;
			val |= FUNC0(g->intr_polarity_bit);
			break;
		case IRQ_TYPE_EDGE_BOTH:
			val |= 3 << g->intr_detection_bit;
			val |= FUNC0(g->intr_polarity_bit);
			break;
		case IRQ_TYPE_LEVEL_LOW:
			break;
		case IRQ_TYPE_LEVEL_HIGH:
			val |= FUNC0(g->intr_polarity_bit);
			break;
		}
	} else if (g->intr_detection_width == 1) {
		val &= ~(1 << g->intr_detection_bit);
		val &= ~(1 << g->intr_polarity_bit);
		switch (type) {
		case IRQ_TYPE_EDGE_RISING:
			val |= FUNC0(g->intr_detection_bit);
			val |= FUNC0(g->intr_polarity_bit);
			break;
		case IRQ_TYPE_EDGE_FALLING:
			val |= FUNC0(g->intr_detection_bit);
			break;
		case IRQ_TYPE_EDGE_BOTH:
			val |= FUNC0(g->intr_detection_bit);
			val |= FUNC0(g->intr_polarity_bit);
			break;
		case IRQ_TYPE_LEVEL_LOW:
			break;
		case IRQ_TYPE_LEVEL_HIGH:
			val |= FUNC0(g->intr_polarity_bit);
			break;
		}
	} else {
		FUNC1();
	}
	FUNC9(val, pctrl, g);

	if (FUNC14(d->hwirq, pctrl->dual_edge_irqs))
		FUNC6(pctrl, g, d);

	FUNC12(&pctrl->lock, flags);

	if (type & (IRQ_TYPE_LEVEL_LOW | IRQ_TYPE_LEVEL_HIGH))
		FUNC5(d, handle_level_irq);
	else if (type & (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING))
		FUNC5(d, handle_edge_irq);

	return 0;
}