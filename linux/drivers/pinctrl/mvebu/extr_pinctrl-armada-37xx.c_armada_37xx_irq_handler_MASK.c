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
struct irq_domain {int revmap_size; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct TYPE_2__ {struct irq_domain* domain; } ;
struct gpio_chip {TYPE_1__ irq; } ;
struct armada_37xx_pinctrl {int /*<<< orphan*/  irq_lock; scalar_t__ base; } ;

/* Variables and functions */
 int GPIO_PER_REG ; 
 scalar_t__ IRQ_EN ; 
 scalar_t__ IRQ_STATUS ; 
 int IRQ_TYPE_EDGE_BOTH ; 
 int IRQ_TYPE_SENSE_MASK ; 
 scalar_t__ FUNC0 (struct armada_37xx_pinctrl*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct armada_37xx_pinctrl* FUNC5 (struct gpio_chip*) ; 
 struct irq_chip* FUNC6 (struct irq_desc*) ; 
 struct gpio_chip* FUNC7 (struct irq_desc*) ; 
 int FUNC8 (struct irq_domain*,int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC14(struct irq_desc *desc)
{
	struct gpio_chip *gc = FUNC7(desc);
	struct irq_chip *chip = FUNC6(desc);
	struct armada_37xx_pinctrl *info = FUNC5(gc);
	struct irq_domain *d = gc->irq.domain;
	int i;

	FUNC1(chip, desc);
	for (i = 0; i <= d->revmap_size / GPIO_PER_REG; i++) {
		u32 status;
		unsigned long flags;

		FUNC11(&info->irq_lock, flags);
		status = FUNC10(info->base + IRQ_STATUS + 4 * i);
		/* Manage only the interrupt that was enabled */
		status &= FUNC10(info->base + IRQ_EN + 4 * i);
		FUNC12(&info->irq_lock, flags);
		while (status) {
			u32 hwirq = FUNC3(status) - 1;
			u32 virq = FUNC8(d, hwirq +
						     i * GPIO_PER_REG);
			u32 t = FUNC9(virq);

			if ((t & IRQ_TYPE_SENSE_MASK) == IRQ_TYPE_EDGE_BOTH) {
				/* Swap polarity (race with GPIO line) */
				if (FUNC0(info,
					hwirq + i * GPIO_PER_REG)) {
					/*
					 * For spurious irq, which gpio level
					 * is not as expected after incoming
					 * edge, just ack the gpio irq.
					 */
					FUNC13(1 << hwirq,
					       info->base +
					       IRQ_STATUS + 4 * i);
					goto update_status;
				}
			}

			FUNC4(virq);

update_status:
			/* Update status in case a new IRQ appears */
			FUNC11(&info->irq_lock, flags);
			status = FUNC10(info->base +
					       IRQ_STATUS + 4 * i);
			/* Manage only the interrupt that was enabled */
			status &= FUNC10(info->base + IRQ_EN + 4 * i);
			FUNC12(&info->irq_lock, flags);
		}
	}
	FUNC2(chip, desc);
}