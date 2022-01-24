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
struct ingenic_gpio_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct ingenic_gpio_chip* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct ingenic_gpio_chip*,unsigned int,int) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *gc,
		unsigned int offset, int value)
{
	struct ingenic_gpio_chip *jzgc = FUNC0(gc);

	FUNC1(jzgc, offset, value);
}