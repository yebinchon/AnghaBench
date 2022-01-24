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
struct armada_37xx_pinctrl {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int OUTPUT_EN ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,unsigned int*) ; 
 struct armada_37xx_pinctrl* FUNC2 (struct gpio_chip*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip,
					    unsigned int offset)
{
	struct armada_37xx_pinctrl *info = FUNC2(chip);
	unsigned int reg = OUTPUT_EN;
	unsigned int mask;

	FUNC1(&reg, &offset);
	mask = FUNC0(offset);

	return FUNC3(info->regmap, reg, mask, 0);
}