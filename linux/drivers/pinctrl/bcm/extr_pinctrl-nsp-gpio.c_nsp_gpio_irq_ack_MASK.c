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
struct nsp_gpio {int dummy; } ;
struct irq_data {unsigned int hwirq; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int IRQ_TYPE_EDGE_FALLING ; 
 int IRQ_TYPE_EDGE_RISING ; 
 int /*<<< orphan*/  NSP_GPIO_EVENT ; 
 int /*<<< orphan*/  REG ; 
 struct nsp_gpio* FUNC1 (struct irq_data*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nsp_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct nsp_gpio *chip = FUNC1(d);
	unsigned gpio = d->hwirq;
	u32 val = FUNC0(gpio);
	u32 trigger_type;

	trigger_type = FUNC2(d->irq);
	if (trigger_type & (IRQ_TYPE_EDGE_FALLING | IRQ_TYPE_EDGE_RISING))
		FUNC3(chip, REG, NSP_GPIO_EVENT, gpio, val);
}