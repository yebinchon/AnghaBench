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
struct iproc_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  IPROC_GPIO_OUT_EN_OFFSET ; 
 unsigned int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (unsigned int) ; 
 struct iproc_gpio* FUNC3 (struct gpio_chip*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *gc, unsigned int gpio)
{
	struct iproc_gpio *chip = FUNC3(gc);
	unsigned int offset = FUNC1(gpio, IPROC_GPIO_OUT_EN_OFFSET);
	unsigned int shift = FUNC2(gpio);

	return !(FUNC4(chip->base + offset) & FUNC0(shift));
}