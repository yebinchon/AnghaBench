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
struct irq_data {unsigned int hwirq; } ;
struct iproc_gpio {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPROC_GPIO_INT_MSK_OFFSET ; 
 struct iproc_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct iproc_gpio*,int /*<<< orphan*/ ,unsigned int,int) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d, bool unmask)
{
	struct gpio_chip *gc = FUNC2(d);
	struct iproc_gpio *chip = FUNC0(gc);
	unsigned gpio = d->hwirq;

	FUNC1(chip, IPROC_GPIO_INT_MSK_OFFSET, gpio, unmask);
}