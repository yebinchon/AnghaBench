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
struct iproc_gpio {int /*<<< orphan*/  pinmux_is_supported; } ;
struct gpio_chip {unsigned int base; } ;

/* Variables and functions */
 struct iproc_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *gc, unsigned offset)
{
	struct iproc_gpio *chip = FUNC0(gc);
	unsigned gpio = gc->base + offset;

	if (!chip->pinmux_is_supported)
		return;

	FUNC1(gpio);
}