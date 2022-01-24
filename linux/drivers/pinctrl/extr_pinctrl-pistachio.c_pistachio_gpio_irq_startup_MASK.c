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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct gpio_chip* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 

__attribute__((used)) static unsigned int FUNC3(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC0(data);

	FUNC1(chip, data->hwirq);
	FUNC2(data);

	return 0;
}