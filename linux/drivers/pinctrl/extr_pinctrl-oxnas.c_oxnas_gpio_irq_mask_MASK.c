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
struct oxnas_gpio_bank {scalar_t__ reg_base; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FE_IRQ_ENABLE ; 
 unsigned int IRQ_TYPE_EDGE_FALLING ; 
 unsigned int IRQ_TYPE_EDGE_RISING ; 
 scalar_t__ RE_IRQ_ENABLE ; 
 struct oxnas_gpio_bank* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 unsigned int FUNC3 (struct irq_data*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC2(data);
	struct oxnas_gpio_bank *bank = FUNC1(chip);
	unsigned int type = FUNC3(data);
	u32 mask = FUNC0(data->hwirq);

	if (type & IRQ_TYPE_EDGE_RISING)
		FUNC5(FUNC4(bank->reg_base + RE_IRQ_ENABLE) & ~mask,
		       bank->reg_base + RE_IRQ_ENABLE);

	if (type & IRQ_TYPE_EDGE_FALLING)
		FUNC5(FUNC4(bank->reg_base + FE_IRQ_ENABLE) & ~mask,
		       bank->reg_base + FE_IRQ_ENABLE);
}