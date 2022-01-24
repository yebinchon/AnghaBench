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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct gpio_chip {int dummy; } ;
struct gb_gpio_controller {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTSUPP ; 
 scalar_t__ PIN_CONFIG_INPUT_DEBOUNCE ; 
 scalar_t__ U16_MAX ; 
 int FUNC0 (struct gb_gpio_controller*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gb_gpio_controller* FUNC1 (struct gpio_chip*) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip, unsigned int offset,
			      unsigned long config)
{
	struct gb_gpio_controller *ggc = FUNC1(chip);
	u32 debounce;

	if (FUNC3(config) != PIN_CONFIG_INPUT_DEBOUNCE)
		return -ENOTSUPP;

	debounce = FUNC2(config);
	if (debounce > U16_MAX)
		return -EINVAL;

	return FUNC0(ggc, (u8)offset, (u16)debounce);
}