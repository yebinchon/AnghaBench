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
struct nsp_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ NSP_GPIO_DATA_IN ; 
 struct nsp_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned gpio)
{
	struct nsp_gpio *chip = FUNC1(gc);

	return !!(FUNC2(chip->base + NSP_GPIO_DATA_IN) & FUNC0(gpio));
}