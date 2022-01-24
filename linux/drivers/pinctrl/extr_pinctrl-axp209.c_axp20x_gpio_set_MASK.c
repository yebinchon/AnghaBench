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
struct axp20x_pctl {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXP20X_GPIO_FUNCTIONS ; 
 int /*<<< orphan*/  AXP20X_GPIO_FUNCTION_OUT_HIGH ; 
 int /*<<< orphan*/  AXP20X_GPIO_FUNCTION_OUT_LOW ; 
 int FUNC0 (unsigned int) ; 
 struct axp20x_pctl* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *chip, unsigned int offset,
			    int value)
{
	struct axp20x_pctl *pctl = FUNC1(chip);
	int reg;

	reg = FUNC0(offset);
	if (reg < 0)
		return;

	FUNC2(pctl->regmap, reg,
			   AXP20X_GPIO_FUNCTIONS,
			   value ? AXP20X_GPIO_FUNCTION_OUT_HIGH :
			   AXP20X_GPIO_FUNCTION_OUT_LOW);
}