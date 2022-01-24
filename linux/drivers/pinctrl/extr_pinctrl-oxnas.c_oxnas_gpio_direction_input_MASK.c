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
typedef  int /*<<< orphan*/  u32 ;
struct oxnas_gpio_bank {scalar_t__ reg_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ OUTPUT_EN_CLEAR ; 
 struct oxnas_gpio_bank* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip,
				      unsigned int offset)
{
	struct oxnas_gpio_bank *bank = FUNC1(chip);
	u32 mask = FUNC0(offset);

	FUNC2(mask, bank->reg_base + OUTPUT_EN_CLEAR);

	return 0;
}