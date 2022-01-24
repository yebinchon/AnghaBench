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
struct sirfsoc_gpio_chip {int dummy; } ;
struct sirfsoc_gpio_bank {int dummy; } ;
struct irq_data {int hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int SIRFSOC_GPIO_BANK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sirfsoc_gpio_chip*,struct sirfsoc_gpio_bank*,int) ; 
 struct sirfsoc_gpio_chip* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 struct sirfsoc_gpio_bank* FUNC3 (struct sirfsoc_gpio_chip*,int) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC2(d);
	struct sirfsoc_gpio_chip *sgpio = FUNC1(gc);
	struct sirfsoc_gpio_bank *bank = FUNC3(sgpio, d->hwirq);

	FUNC0(sgpio, bank, d->hwirq % SIRFSOC_GPIO_BANK_SIZE);
}