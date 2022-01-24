#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stm32_pinctrl {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct stm32_gpio_bank {TYPE_2__ gpio_chip; } ;
struct irq_data {int /*<<< orphan*/  hwirq; TYPE_1__* domain; } ;
struct TYPE_4__ {struct stm32_gpio_bank* host_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct stm32_pinctrl* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct irq_data *irq_data)
{
	struct stm32_gpio_bank *bank = irq_data->domain->host_data;
	struct stm32_pinctrl *pctl = FUNC1(bank->gpio_chip.parent);
	int ret;

	ret = FUNC3(&bank->gpio_chip, irq_data->hwirq);
	if (ret)
		return ret;

	ret = FUNC2(&bank->gpio_chip, irq_data->hwirq);
	if (ret) {
		FUNC0(pctl->dev, "unable to lock HW IRQ %lu for IRQ\n",
			irq_data->hwirq);
		return ret;
	}

	return 0;
}