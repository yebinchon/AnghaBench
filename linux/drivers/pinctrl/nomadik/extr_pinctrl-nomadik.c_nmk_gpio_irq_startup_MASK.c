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
struct nmk_gpio_chip {int /*<<< orphan*/  clk; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct nmk_gpio_chip* FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*) ; 

__attribute__((used)) static unsigned int FUNC3(struct irq_data *d)
{
	struct nmk_gpio_chip *nmk_chip = FUNC1(d);

	FUNC0(nmk_chip->clk);
	FUNC2(d);
	return 0;
}