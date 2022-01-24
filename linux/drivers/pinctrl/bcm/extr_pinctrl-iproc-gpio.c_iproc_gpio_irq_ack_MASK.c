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
struct irq_data {unsigned int hwirq; } ;
struct iproc_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  IPROC_GPIO_INT_CLR_OFFSET ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 
 struct iproc_gpio* FUNC3 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC4(d);
	struct iproc_gpio *chip = FUNC3(gc);
	unsigned gpio = d->hwirq;
	unsigned int offset = FUNC1(gpio,
			IPROC_GPIO_INT_CLR_OFFSET);
	unsigned int shift = FUNC2(gpio);
	u32 val = FUNC0(shift);

	FUNC5(val, chip->base + offset);
}