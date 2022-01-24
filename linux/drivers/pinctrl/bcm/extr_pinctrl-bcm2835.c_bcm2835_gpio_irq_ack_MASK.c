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
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct bcm2835_pinctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPEDS0 ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_pinctrl*,int /*<<< orphan*/ ,unsigned int) ; 
 struct bcm2835_pinctrl* FUNC1 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC2 (struct irq_data*) ; 
 unsigned int FUNC3 (struct irq_data*) ; 

__attribute__((used)) static void FUNC4(struct irq_data *data)
{
	struct gpio_chip *chip = FUNC2(data);
	struct bcm2835_pinctrl *pc = FUNC1(chip);
	unsigned gpio = FUNC3(data);

	FUNC0(pc, GPEDS0, gpio);
}