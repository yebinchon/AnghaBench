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
struct stm32_pinctrl {int irqmux_map; int /*<<< orphan*/  irqmux_lock; scalar_t__ hwlock; int /*<<< orphan*/ * irqmux; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct stm32_gpio_bank {int /*<<< orphan*/  bank_ioport_nr; TYPE_1__ gpio_chip; } ;
struct irq_domain {struct stm32_gpio_bank* host_data; } ;
struct irq_data {size_t hwirq; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int EBUSY ; 
 int /*<<< orphan*/  HWSPINLOCK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct stm32_pinctrl* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct irq_domain *d,
				      struct irq_data *irq_data, bool reserve)
{
	struct stm32_gpio_bank *bank = d->host_data;
	struct stm32_pinctrl *pctl = FUNC2(bank->gpio_chip.parent);
	unsigned long flags;
	int ret = 0;

	/*
	 * gpio irq mux is shared between several banks, a lock has to be done
	 * to avoid overriding.
	 */
	FUNC6(&pctl->irqmux_lock, flags);
	if (pctl->hwlock)
		ret = FUNC3(pctl->hwlock, HWSPINLOCK_TIMEOUT);

	if (ret) {
		FUNC1(pctl->dev, "Can't get hwspinlock\n");
		goto unlock;
	}

	if (pctl->irqmux_map & FUNC0(irq_data->hwirq)) {
		FUNC1(pctl->dev, "irq line %ld already requested.\n",
			irq_data->hwirq);
		ret = -EBUSY;
		if (pctl->hwlock)
			FUNC4(pctl->hwlock);
		goto unlock;
	} else {
		pctl->irqmux_map |= FUNC0(irq_data->hwirq);
	}

	FUNC5(pctl->irqmux[irq_data->hwirq], bank->bank_ioport_nr);

	if (pctl->hwlock)
		FUNC4(pctl->hwlock);

unlock:
	FUNC7(&pctl->irqmux_lock, flags);
	return ret;
}