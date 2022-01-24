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
struct platform_device {int dummy; } ;
struct irq_data {int dummy; } ;
struct gpio_chip {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct irq_data *data, unsigned int on)
{
	struct gpio_chip *chip = FUNC2(data);
	struct platform_device *pdev = FUNC4(chip->parent);
	int irq = FUNC3(pdev, 0);

	/* Propagate to parent irq */
	if (on)
		FUNC1(irq);
	else
		FUNC0(irq);

	return 0;
}