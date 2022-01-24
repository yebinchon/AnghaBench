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
struct sx150x_pinctrl {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sx150x_pinctrl*,unsigned int,int) ; 
 struct sx150x_pinctrl* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct sx150x_pinctrl*,int) ; 
 scalar_t__ FUNC3 (struct sx150x_pinctrl*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, unsigned int offset,
			    int value)
{
	struct sx150x_pinctrl *pctl = FUNC1(chip);

	if (FUNC3(pctl, offset))
		FUNC2(pctl, value);
	else
		FUNC0(pctl, offset, value);

}