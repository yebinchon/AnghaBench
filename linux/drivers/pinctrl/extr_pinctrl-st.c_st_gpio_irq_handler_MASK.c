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
struct st_gpio_bank {int dummy; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_gpio_bank*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_chip*,struct irq_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_chip*,struct irq_desc*) ; 
 struct st_gpio_bank* FUNC3 (struct gpio_chip*) ; 
 struct irq_chip* FUNC4 (struct irq_desc*) ; 
 struct gpio_chip* FUNC5 (struct irq_desc*) ; 

__attribute__((used)) static void FUNC6(struct irq_desc *desc)
{
	/* interrupt dedicated per bank */
	struct irq_chip *chip = FUNC4(desc);
	struct gpio_chip *gc = FUNC5(desc);
	struct st_gpio_bank *bank = FUNC3(gc);

	FUNC1(chip, desc);
	FUNC0(bank);
	FUNC2(chip, desc);
}