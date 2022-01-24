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
struct gpio_chip {int dummy; } ;
struct bcm2835_pinctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPCLR0 ; 
 int /*<<< orphan*/  GPSET0 ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_pinctrl*,int /*<<< orphan*/ ,unsigned int) ; 
 struct bcm2835_pinctrl* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip, unsigned offset, int value)
{
	struct bcm2835_pinctrl *pc = FUNC1(chip);

	FUNC0(pc, value ? GPSET0 : GPCLR0, offset);
}