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
struct npcm7xx_gpio {int (* direction_output ) (struct gpio_chip*,unsigned int,int) ;} ;
struct gpio_chip {scalar_t__ base; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 struct npcm7xx_gpio* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (struct gpio_chip*,unsigned int,int) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *chip,
				     unsigned int offset, int value)
{
	struct npcm7xx_gpio *bank = FUNC1(chip);
	int ret;

	FUNC0(chip->parent, "gpio_direction_output: offset%d = %x\n", offset,
		value);

	ret = FUNC2(offset + chip->base);
	if (ret)
		return ret;

	return bank->direction_output(chip, offset, value);
}