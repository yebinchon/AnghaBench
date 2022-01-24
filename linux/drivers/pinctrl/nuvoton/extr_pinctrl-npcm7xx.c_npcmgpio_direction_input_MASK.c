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
struct npcm7xx_gpio {int (* direction_input ) (struct gpio_chip*,unsigned int) ;} ;
struct gpio_chip {scalar_t__ base; } ;

/* Variables and functions */
 struct npcm7xx_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct gpio_chip*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned int offset)
{
	struct npcm7xx_gpio *bank = FUNC0(chip);
	int ret;

	ret = FUNC1(offset + chip->base);
	if (ret)
		return ret;

	return bank->direction_input(chip, offset);
}