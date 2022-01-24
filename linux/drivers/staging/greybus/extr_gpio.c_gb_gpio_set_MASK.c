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
typedef  int /*<<< orphan*/  u8 ;
struct gpio_chip {int dummy; } ;
struct gb_gpio_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gb_gpio_controller*,int /*<<< orphan*/ ,int) ; 
 struct gb_gpio_controller* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip, unsigned int offset, int value)
{
	struct gb_gpio_controller *ggc = FUNC1(chip);

	FUNC0(ggc, (u8)offset, !!value);
}