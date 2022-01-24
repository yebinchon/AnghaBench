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
struct samsung_pin_bank {int /*<<< orphan*/  irq_domain; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 struct samsung_pin_bank* FUNC0 (struct gpio_chip*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned offset)
{
	struct samsung_pin_bank *bank = FUNC0(gc);
	unsigned int virq;

	if (!bank->irq_domain)
		return -ENXIO;

	virq = FUNC1(bank->irq_domain, offset);

	return (virq) ? : -ENXIO;
}