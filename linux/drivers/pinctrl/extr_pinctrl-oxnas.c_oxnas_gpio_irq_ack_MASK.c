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
struct oxnas_gpio_bank {scalar_t__ reg_base; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IRQ_PENDING ; 
 struct oxnas_gpio_bank* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC2(data);
	struct oxnas_gpio_bank *bank = FUNC1(chip);
	u32 mask = FUNC0(data->hwirq);

	FUNC3(mask, bank->reg_base + IRQ_PENDING);
}